date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/BABIES_DataPush_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES

rsync -rvtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_Newborn/*-*-* $natoak/BABIES_Newborn
echo 'Synced Newborn Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rvtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_6month/*-*-* $natoak/BABIES_6month/.
echo 'Synced 6month Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rvtP --ignore-existing --progress \
--filter="- */feat/" \
--filter="- */delete/" $zfsoak/BABIES_MAMA/*-MAMA $natoak/BABIES_MAMA/.

echo 'Synced MAMA Data from ZFS Oak to Native Oak on' $date >> $log
