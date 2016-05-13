#!/bin/sh
if (( $# != 3))
then
   echo usage: key, ip, user
fi

KEY=$1
IP=$2
USER=$3

ssh-keygen -R $IP
./runScript.sh $KEY $USER@$IP install_mosquitto.sh
./runScriptMQTT.sh $KEY $USER@$IP $IP testTopic hello_sensor.sh testParameterSensor
./runScriptMQTT.sh $KEY $USER@$IP $IP testTopic hello_aktor.sh testParameterAktor
