#!/bin/bash
mysqldump -h localhost --user= --password='' --all-databases | gzip -c > /config/backups/databasebackup_`date +%Y%m%d`.sql.gz

ls -s /config/backups/databasebackup_*.sql.gz | tail -n +2 | xargs -r rm
