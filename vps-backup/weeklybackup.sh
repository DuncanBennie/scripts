#!/bin/bash

tar -zcvf /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz /home/sunday/.docker
rclone copy /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz ovh:weekly -P
rm /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz

rclone delete --min-age 10w ovh:weekly
