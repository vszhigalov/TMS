import boto3
instances = ['i-0c78bc2082984c7d1', 'i-051d9bf58bb4f8536']
ec2 = boto3.resource('ec2')
ec2.instances.filter(InstanceIds = instances).start() #for starting an ec2 instance
print(instances)