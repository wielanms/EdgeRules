#!/bin/sh
if (( $# != 3))
then
   echo usage: start_param, broker_ip, topic
fi

START_PARAM=$1
BROKER_IP=$2
TOPIC=$3

while true
do
  mosquitto_pub -h $BROKER_IP -t sensor/$TOPIC -m "hello $START_PARAM"
  sleep 2
done
