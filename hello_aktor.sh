#!/bin/sh
if (( $# != 3))
then
   echo usage: start_param, broker_ip, topic
fi

START_PARAM=$1
BROKER_IP=$2
TOPIC=$3

mosquitto_sub -h $BROKER_IP -t sensor/$TOPIC | while read i; do echo $START_PARAM says $i >> log-aktor; done
