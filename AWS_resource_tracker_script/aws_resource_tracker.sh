#!/bin/zsh
set -x 
: '
This script will report the AWS resource usage
AWS S3
AWS EC2
AWS Lamda
AWS IAM Users  

'
# List S3 Buckets
aws s3 ls >> aws_resources.txt   

# List EC@ Instances
aws ec2 ls >> aws_resources.txt
# aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lamda 
aws lambda list-functions >> aws_resources.txt

# List IAM Users
#aws iam list-users
aws iam list-users | jq -r '.Users[].UserName' >> aws_resources.txt
