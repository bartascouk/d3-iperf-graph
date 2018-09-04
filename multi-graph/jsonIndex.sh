#!/bin/bash
# This needs running with crontab periodically
# Contant of this file will be read by
# js scirpt in index.html to produce graphs
# from iperf3 data
 
PATH="/var/www/html/multi-graph/"
LOG="jsonIndex.log"
echo "file" > $LOG
#find . -type f -name "*.json" >> $LOG
find $PATH -type f -name "*.json" -exec basename {} \; >> $LOG
