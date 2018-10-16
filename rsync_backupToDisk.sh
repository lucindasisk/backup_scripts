#! /bin/bash

date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/BABIES_Backup_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES
backup=/Volumes/ScanTeamBackups/BABIES


rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_Newborn/*-*-* $backup/BABIES_Newborn
echo 'Synced Newborn Data from ZFS Oak to hard drive on' $date >> $log

rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_6month/*-*-* $backup/BABIES_6month/.
echo 'Synced 6month Data from ZFS Oak to hard drive on' $date >> $log

rsync -rtP --ignore-existing --progress \
--filter="- */feat/" \
--filter="- */delete/" $zfsoak/BABIES_MAMA/*-MAMA $backup/BABIES_MAMA/.

echo 'Synced MAMA Data from ZFS Oak to hard drive on' $date >> $log
