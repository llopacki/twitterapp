#!/bin/bash

## Wrapper script for the Docker/Fargate
## wrapper.sh

echo "ver5"
#Run other processes
python /app/twitter-kinesis-feed.py
echo "Terminated"
