#https://blog.ipswitch.com/how-to-create-an-ec2-instance-with-python
#pip install awscli boto3
import boto3
ec2 = boto3.resource('ec2')

# create a new EC2 instance
instances = ec2.create_instances(
     ImageId='ami-02b4e72b17337d6c1',
     MinCount=1,
     MaxCount=2,
     InstanceType='t2.micro',
     KeyName='TMS-ireland'
 )