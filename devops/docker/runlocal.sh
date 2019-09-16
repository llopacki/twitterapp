## Run docker image locally (with mounted creds)
## runlocal.sh

docker run -ti -v $HOME/.aws/credentials:/root/.aws/credentials:ro twitterapp:v1