#!/usr/bin/env bash

# Exepcts environment variables to be set as follows
#
# AWS_REGION: target region for deployment. 
# INFRA_BUCKET: s3 bucket in target region. deploy script will stage required static assets to thie bucket

if [ -z $INFRA_BUCKET ] || [ -z $AWS_REGION ]; then
  echo "Error: Environment Variables INFRA_BUCKET and AWS_REGION are required"
  echo "Please set environment variables INFRA_BUCKET and AWS_REGION and rerun"
  exit 1
fi
echo "Using S3 Bucket: $INFRA_BUCKET"

echo "Copying templates to s3 bucket"
aws s3 cp ./endpoint-stack.yaml s3://$INFRA_BUCKET/templates/
aws s3 cp ./network-stack.yaml s3://$INFRA_BUCKET/templates/
aws s3 cp ./nlp-workshop-stack.yaml s3://$INFRA_BUCKET/templates/
aws s3 cp ./sagemaker-stack.yaml s3://$INFRA_BUCKET/templates/
aws s3 cp ./storage-stack.yaml s3://$INFRA_BUCKET/templates/
aws s3 cp ./gpt-j.tar.gz s3://$INFRA_BUCKET/gpt-j/model.tar.gz
aws s3 cp ./gpt-2.tar.gz s3://$INFRA_BUCKET/gpt-2/model.tar.gz

echo "Staging notebooks to s3 bucket"
(
  cd ../notebooks
  zip -r ../notebooks.zip .
  aws s3 cp ../notebooks.zip s3://$INFRA_BUCKET
  rm ../notebooks.zip
)

export STACK_NAME=NLP-Lab
echo "Deploying cloudformation stack"
aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-url https://${INFRA_BUCKET}.s3.${AWS_REGION}.amazonaws.com/templates/nlp-workshop-stack.yaml \
  --parameters ParameterKey=InfraResourcesBucket,ParameterValue=$INFRA_BUCKET \
  --capabilities CAPABILITY_AUTO_EXPAND CAPABILITY_IAM

