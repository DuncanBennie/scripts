#!/bin/bash

tar -zcvf /home/sunday/monthlybackup`date +%Y%m%d`.tar.gz /home/sunday/.docker
rclone copy /home/sunday/montlybackup`date +%Y%m%d`.tar.gz ovh:monthly -P
rm /home/sunday/dailybackup`date +%Y%m%d`.tar.gz

rclone delete --min-age 1y ovh:monthly
