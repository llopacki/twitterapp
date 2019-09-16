## Script for building docker image
## builddocker.sh

cd ../../producer/
docker build -t twitterapp:v1 .
cd -

