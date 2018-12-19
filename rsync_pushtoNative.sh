date=$(date +%Y-%m-%d_%T)
log=/Volumes/group/active/BABIES/Sync_Logs/BABIES_DataPush_Log.txt
tigerlog=/Volumes/group/active/TIGER/Sync_Logs/TIGER_DataPush_Log.txt
elslog=/Volumes/group/active/ELS/Sync_Logs/ELS_DataPush_Log.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES
tiger=/Volumes/group/active/TIGER
nattiger=/Volumes/iang/TIGER_data

 rsync -rtP --ignore-existing --progress \
 --filter="- */delete/" $zfsoak/BABIES_MAMA/*-MAMA $natoak/BABIES_MAMA/

echo 'Synced MAMA Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_Newborn/*-*-* $natoak/BABIES_Newborn/
echo 'Synced Newborn Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_6month/*-*-* $natoak/BABIES_6month/
echo 'Synced 6month Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST3/config /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T3/
rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST3/matproc /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T3/
rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST2/config /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T2/
rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST2/matproc /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T2/
rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST1/config /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T1/
rsync -rtP --ignore-existing --progress /Volumes/group/users/hoTC/TiffanyELST1/matproc /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T1/

echo 'Synced ELS DTI Data from ZFS Oak to Native Oak on' $date >> $elslog

rsync -rtP --ignore-existing --progress /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T1/config /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T1/
rsync -rtP --ignore-existing --progress /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T2/config /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T2/

rsync -rtP --ignore-existing --progress /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T1/matproc /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T1/
rsync -rtP --ignore-existing --progress /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T2/matproc /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T2/

echo 'Synced TIGER DTI Data from ZFS Oak to Native Oak on' $date >> $tigerlog

# rsync -rtP --ignore-existing --progress $tiger/Participant_Data/TIGER-T1/ $nattiger/TIGER-T1/
# rsync -rtP --ignore-existing --progress $tiger/Participant_Data/TIGER-T2/ $nattiger/TIGER-T2/
#
# echo 'Synced MAMA Data from ZFS Oak to Native Oak on' $date >> $log

rsync -rtP --ignore-existing --progress \
--filter="- */*all_raw_data/" \
--filter="- */delete/" $zfsoak/BABIES_rest/subjDir $natoak/BABIES_rest/
echo 'Synced Newborn Rest Proc Data from ZFS Oak to Native Oak on' $date >> $log
