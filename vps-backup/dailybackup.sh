#!/bin/bash

tar -zcvf /home/sunday/dailybackup`date +%Y%m%d`.tar.gz /home/sunday
rclone copy /home/sunday/dailybackup`date +%Y%m%d`.tar.gz ovh:daily
rm /home/sunday/dailybackup`date +%Y%m%d`.tar.gz

rclone delete --min-age 15d ovh:daily
