## Serverless consumer
## handler.py
## Notice: located in devops directory (configuration of serverless.com) and linked to consumer dir

import json
import base64


def lambda_handler(event, context):
    #print("Received event: " + json.dumps(event, indent=2))
    for record in event['Records']:
        # Kinesis data is base64 encoded so decode here
        payload = base64.b64decode(record['kinesis']['data'])
        print("Decoded payload: ")
        print(payload)
    return 'Successfully processed {} records.'.format(len(event['Records']))

    # Use this code if you don't use the http event with the LAMBDA-PROXY
    # integration
    """
    return {
        "message": "Go Serverless v1.0! Your function executed successfully!",
        "event": event
    }
    """
