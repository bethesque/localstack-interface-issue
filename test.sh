#/bin/bash

export AWS_REGION=ap-southeast-2
echo "Getting parameter foo"
awslocal ssm get-parameter --name "foo"

echo "It's not there!"

echo "Putting parameter foo from localhost"
awslocal ssm put-parameter --name "foo" --type String --value "bar" --overwrite
echo "Getting parameter foo from localhost"
awslocal ssm get-parameter --name "foo"

echo "It's there!"