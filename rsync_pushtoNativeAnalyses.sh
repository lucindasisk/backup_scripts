date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/BABIES_DataPush_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES

rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_rest/subjDir $natoak/BABIES_rest/
echo 'Synced Newborn Rest Proc Data from ZFS Oak to Native Oak on' $date >> $log
