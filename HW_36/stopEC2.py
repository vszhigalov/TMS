import boto3
instances = ['i-0c78bc2082984c7d1']
ec2 = boto3.resource('ec2')
ec2.instances.filter(InstanceIds = instances).stop() #for stopping an ec2 instance
#ec2.instances.filter(InstanceIds = instances).terminate() #for terminating an ec2 instance