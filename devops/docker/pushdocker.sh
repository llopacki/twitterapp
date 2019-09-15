# Tag and push the image to ECR
# might need login/creds
# aws ecr get-login
docker tag twitterapp:v1 712552468879.dkr.ecr.eu-west-1.amazonaws.com/twitterapp
docker push 712552468879.dkr.ecr.eu-west-1.amazonaws.com/twitterapp