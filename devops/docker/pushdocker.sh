## Script for tagging and pushing the image to ECR
## pushdocker.sh
## might need login/creds
## use:
## aws ecr get-login
## to login

docker tag twitterapp:v1 712552468879.dkr.ecr.eu-west-1.amazonaws.com/twitterapp
docker push 712552468879.dkr.ecr.eu-west-1.amazonaws.com/twitterapp