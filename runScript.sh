#!/bin/sh

if (( $# != 3))
then
   echo usage: key, dest_ip, script_name
fi
#

KEY=$1
DEST_IP=$2
SCRIPT_NAME=$3


echo copy script...
scp -i $KEY $SCRIPT_NAME $DEST_IP:~

echo login
ssh -i $KEY $DEST_IP "nohup ./$SCRIPT_NAME > log-$SCRIPT_NAME &"
echo script started
echo end
