#!/bin/sh
sleep 10 # sorry...
echo "Putting parameter foo"
awslocal ssm put-parameter --name "foo" --type String --value "bar" --overwrite
echo "Getting parameter foo"
awslocal ssm get-parameter --name "foo"
