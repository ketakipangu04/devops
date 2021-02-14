# Create EC2 instance using Cloudformation

`aws cloudformation create-stack --template-body file://single-instance.yml --stack-name single-instance --parameters ParameterKey=KeyName,ParameterValue=ubuntu-new ParameterKey=InstanceType,ParameterValue=t2.micro
`
