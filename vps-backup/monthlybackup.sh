#!/bin/bash

tar -zcvf /home/sunday/monthlybackup`date +%Y%m%d`.tar.gz /home/sunday
rclone copy /home/sunday/monthlybackup`date +%Y%m%d`.tar.gz onedrive:monthly -PL
rm /home/sunday/monthlybackup`date +%Y%m%d`.tar.gz
