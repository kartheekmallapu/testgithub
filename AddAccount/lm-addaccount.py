#!/bin/env python
import requests
import json
import hashlib
import base64
import time
import hmac
import boto3
import sys

#def ExternalId

#Account Info
AccessId =''
AccessKey =''
Company = 'orica'

#Request Info
httpVerb ='GET'
resourcePath = '/aws/externalId'
queryParams =''
data= ''

# AWS account 
acc_id = sys.argv[1]

#LM Device name

lm_dev = sys.argv[2]

#Construct URL
url = 'https://'+ Company +'.logicmonitor.com/santaba/rest' + resourcePath +queryParams

#Get current time in milliseconds
epoch = str(int(time.time() * 1000))

#Concatenate Request details
requestVars = httpVerb + epoch + data + resourcePath

#Construct signature
signature = base64.b64encode(hmac.new(AccessKey,msg=requestVars,digestmod=hashlib.sha256).hexdigest())

#Construct headers
auth = 'LMv1 ' + AccessId + ':' + signature + ':' + epoch
headers = {'Content-Type':'application/json','Authorization':auth}

#Make request
#response = requests.get(url, data=data, headers=headers)
response = requests.get(url, headers=headers)

jsonRes = json.loads(response.content)

print jsonRes

extId = jsonRes['data']['externalId']


print extId

#Assume role

boto_sts2 = boto3.client('sts')

stsresponse = boto_sts2.assume_role(RoleArn='arn:aws:iam::891576938454:role/orica-vault-admin-role',RoleSessionName='orica-vault-admin-role')

mastersession_id = stsresponse['Credentials']['AccessKeyId']
mastersession_key = stsresponse['Credentials']['SecretAccessKey']
mastersession_token = stsresponse['Credentials']['SessionToken']

arn = 'arn:aws:iam::'+acc_id+':role/orica-vault-admin-role'

stsresponse2 = boto_sts2.assume_role(RoleArn=arn,RoleSessionName='orica-vault-admin-role')

newsession_id2 = stsresponse2['Credentials']['AccessKeyId']
newsession_key2 = stsresponse2['Credentials']['SecretAccessKey']
newsession_token2 = stsresponse2['Credentials']['SessionToken']

policy = {
        'Version': '2012-10-17',
        'Statement': [
            {
                'Effect': 'Allow',
                'Action': 'sts:AssumeRole',
                'Principal': {
                    'AWS': '282028653949'
                },
                'Condition': {
                    'StringEquals': {
                        'sts:ExternalId': extId
                    }
                }
            }
        ]
    }
#iam_client = boto3.client('iam', region_name='us-east-1')
iam_client = boto3.client('iam', region_name='us-east-1', aws_access_key_id=newsession_id2, aws_secret_access_key=newsession_key2, aws_session_token=newsession_token2)

response = iam_client.list_policies()
response = iam_client.create_role(
    RoleName='Orica-LogicMonitor-Role',
              #external_Id=extId,
    AssumeRolePolicyDocument=json.dumps(policy)
              )
#arn = response['Role']['Arn']

#accid = arn.split(":")[3]

#acc_id = arn.split(":")[4]

PolArn = 'arn:aws:iam::'+acc_id+':policy/Orica-LogicMonitor-Policy'
print PolArn


response = iam_client.attach_role_policy(
    RoleName='Orica-LogicMonitor-Role',
    PolicyArn=PolArn
)

RolArn = 'arn:aws:iam::'+acc_id+':role/Orica-LogicMonitor-Role'
print RolArn

time.sleep(60)

#Request Info
httpVerb ='POST'
resourcePath = '/device/groups'
queryParams =''

data='{"groupType":"AWS/AwsRoot","name":"'+ lm_dev +'","description":"Sydney DC","disableAlerting":false,"customProperties":[{"name":"customer","value":"Orica"}],"parentId":687,"extra":{"default":{"selectAll":true,"monitoringRegions":["US_EAST_1","US_WEST_1","US_WEST_2","EU_WEST_1","EU_CENTRAL_1","AP_SOUTHEAST_1","AP_SOUTHEAST_2","AP_NORTHEAST_1","SA_EAST_1"],"deadOperation":"MANUALLY","tags":[]},"services":{"EC2":{"selectAll":false,"monitoringRegions":["US_EAST_1","US_WEST_1","US_WEST_2","EU_WEST_1","EU_CENTRAL_1","AP_SOUTHEAST_1","AP_SOUTHEAST_2","AP_NORTHEAST_1","SA_EASgit@gitlab.com:orica/deployments/logicmonitor-deploy.gitT_1"],"useDefault":false,"deadOperation":"KEEP_7_DAYS"},"LAMBDA":{"selectAll":true,"monitoringRegions":["US_EAST_1","US_WEST_1","US_WEST_2","EU_WEST_1","EU_CENTRAL_1","AP_SOUTHEAST_1","AP_SOUTHEAST_2","AP_NORTHEAST_1","SA_EAST_1"],"useDefault":true,"deadOperation":"KEEP_7_DAYS"},"DYNAMODB":{"selectAll":true,"monitoringRegions":["US_EAST_1","US_WEST_1","US_WEST_2","EU_WEST_1","EU_CENTRAL_1","AP_SOUTHEAST_1","AP_SOUTHEAST_2","AP_NORTHEAST_1","SA_EAST_1"],"useDefault":true,"deadOperation":"KEEP_7_DAYS"}},"account":{"externalId":"'+ extId +'","assumedRoleArn":"arn:aws:iam::'+ acc_id +':role/Orica-LogicMonitor-Role"}}}'

#data = data % extId

#Construct URL
url = 'https://'+ Company +'.logicmonitor.com/santaba/rest' + resourcePath + queryParams


#Get current time in milliseconds
epoch = str(int(time.time() * 1000))

#Concatenate Request details
requestVars = httpVerb + epoch + data + resourcePath

#Construct signature
signature = base64.b64encode(hmac.new(AccessKey,msg=requestVars,digestmod=hashlib.sha256).hexdigest())

#Construct headers
auth = 'LMv1 ' + AccessId + ':' + signature + ':' + epoch
headers = {'Content-Type':'application/json','Authorization':auth}

#Make request
response = requests.post(url, data=data, headers=headers)

#Print status and body of response
print 'Response Status:',response.status_code
print 'Response Body:',response.content
