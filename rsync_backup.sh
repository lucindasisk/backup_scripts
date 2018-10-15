#! /bin/bash

date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/Newborn_Rsync_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES
backup=/Volumes/ScanTeamBackups/BABIES


rsync -rvtP --ignore-existing --progress $zfsoak/BABIES_Newborn $backup
echo 'Synced Newborn Data from ZFS Oak to backup drive on' $date >> $log

rsync -rvtP --ignore-existing --progress $zfsoak/BABIES_Newborn $natoak
echo 'Synced Newborn Data from ZFS Oak to Native Oak on' $date >> $log
