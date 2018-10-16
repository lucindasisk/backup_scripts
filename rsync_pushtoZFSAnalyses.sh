date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/BABIES_Analysis2ZFS_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES

rsync -rtP --ignore-existing --progress $natoak/BABIES_rest/ $zfsoak/BABIES_rest/
echo 'Synced Newborn Rest Proc Data from ZFS Oak to Native Oak on' $date >> $log
