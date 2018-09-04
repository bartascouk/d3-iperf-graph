#!/bin/bash

TS=

TS=`date +%Y-%m-%d--%H-%M-%S`
log_file=/var/www/html/data--${TS}.json

iperf3 -c dna-solid-uk.dnae.com -t 60 -R --json --logfile $log_file
