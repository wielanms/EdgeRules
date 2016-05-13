#!/bin/sh
echo add repro
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa;
echo update
sudo apt-get update;
echo install mosquitto
sudo apt-get install mosquitto mosquitto-clients
echo start mosquitto
sudo mosquitto;
