#!/bin/bash

backup_dir="/backup"


timestamp=$(date +%Y%m%d%H%M%S)

rsync -av /Studentin "$backup_dir/Students_backup_$timestamp"

rsync -av /Mitarbeiter "$backup_dir/Staff_backup_$timestamp"


find "$backup_dir" -type d -mtime +7 -exec rm -rf {} \;
