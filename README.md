Example application that reads and streams Twitter tweets to consumers using Kinesis.

Main components:
- producer: reads all the tweets with given keyword and streams them over kinesis
- consumer: example of a consumer. It reads the kinesis events and logs the tweets to a log (CloudWatch)

Architecture:
- producer: 
Is a script written in python, deployed using Terraform and running as a Docker image in AWS Fargate 
- consumer
Is a lambda script written in python, deployed using serverless.com framework and running in AWS Lambda

Automation:
- automated deployment using serverless.com and Terraform/Docker

AWS components in use:
- Kinesis
- IAM
- Lambda
- Fargate / ECS / ECR

Limitations:
- The consumer is currently only logging the streamed tweets to CloudWatch 
- Only dev environment configured. Full deployment would require staging and prod

Other comments:
- Credential handling is not "best practice", needs to be improved

