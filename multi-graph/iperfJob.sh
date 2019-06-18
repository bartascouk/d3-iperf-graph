#!/bin/bash

IP_ADDRESS=
TS=`date +%Y-%m-%d--%H-%M-%S`
$LOG_FILE=/var/www/html/data--${TS}.json

iperf3 -c $IP_ADDRESS -t 60 -R --json --logfile $LOG_FILE
