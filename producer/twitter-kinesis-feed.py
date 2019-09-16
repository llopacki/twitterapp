## Producer
## twitter-kinesis-feed.py
## Reads the Tweets using TwitterAPI and feed data into kinesis
## Based on https://blog.insightdatascience.com/getting-started-with-aws-serverless-architecture-tutorial-on-kinesis-and-dynamodb-using-twitter-38a1352ca16d

from TwitterAPI import TwitterAPI
import boto3
import json
import twitterCfg
import twitterCrd
import twitterFlt

## fetch twitter credentials
consumer_key = twitterCrd.consumer_key
consumer_secret = twitterCrd.consumer_secret
access_token_key = twitterCrd.access_token_key
access_token_secret = twitterCrd.access_token_secret

## fetch other config
# max_long = twitterFlt.maxLong
# min_long = twitterFlt.minLong
# max_lat = twitterFlt.maxLat
# min_lat = twitterFlt.minLat

Filter = twitterFlt.trackTerm
Region = twitterCfg.awsRegion
Stream = twitterCfg.awsStream

api = TwitterAPI(consumer_key, consumer_secret, access_token_key, access_token_secret)
kinesis = boto3.client('kinesis',
                       region_name=Region)

print("Filter: "+Filter)
r = api.request('statuses/filter', {'track': Filter})

## stream tweets through kinesis
i = 0
for item in r:
    print("Tweet#: " + str(i))
    i += 1
    kinesis.put_record(
        StreamName=Stream,
        Data=json.dumps(item),
        PartitionKey="filler"
    )