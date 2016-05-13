#!/bin/sh

if (( $# != 6))
then
   echo usage: key, dest_ip, broker_ip, topic, script_name, start_param
fi
#

KEY=$1
DEST_IP=$2
BROKER_IP=$3
TOPIC=$4
SCRIPT_NAME=$5
START_PARAM=$6


echo copy script...
scp -i $KEY $SCRIPT_NAME $DEST_IP:~

echo login
ssh -i $KEY $DEST_IP "nohup ./$SCRIPT_NAME $START_PARAM $BROKER_IP $TOPIC > log-$SCRIPT_NAME &"
echo script started
echo end
