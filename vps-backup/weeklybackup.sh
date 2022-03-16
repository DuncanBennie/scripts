#!/bin/bash

tar -zcvf /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz /home/sunday
rclone copy /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz onedrive:weekly -PL
rm /home/sunday/weeklybackup`date +%Y%m%d`.tar.gz
