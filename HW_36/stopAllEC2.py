import boto3
ec2 = boto3.resource('ec2')
instances = ec2.instances.filter(
    Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
instance_ids = [instance.id for instance in instances]
print(instance_ids)
ec2.instances.filter(InstanceIds=instance_ids).stop()
