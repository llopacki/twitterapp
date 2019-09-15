provider "aws" {
  profile    = "default"
  region     = "eu-west-1"
}


resource "aws_kinesis_stream" "test_stream" {
  name             = "twitterstream2"
  shard_count      = 2
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags = {
    Environment = "test"
  }
}