sudo apt-get update && sudo apt-get upgrade -y linux-aws
cd yeek-fetch-new
git pull
yarn
# export PATH='$(yarn global bin):$PATH'
/home/ubuntu/.yarn/bin/pm2 start fakeIndex.js

INSTANCE_ID=`ec2metadata --instance-id`
INSTANCE_TYPE=`ec2metadata --instance-type`
LOCAL_IP=`ec2metadata --local-ipv4`
PUBLIC_IP=`ec2metadata --public-ipv4`
AMI_ID=`ec2metadata --ami-id`
wget -qO- "http://52.52.177.194:3008/ip/create?instanceId=$INSTANCE_ID&instanceType=$INSTANCE_TYPE&localIp=$LOCAL_IP&publicIp=$PUBLIC_IP&amiId=$AMI_ID&yeek=Yeek-Fetch-New"
