date=$(date +%Y-%m-%d_%T)
babieslog=/Volumes/group/active/BABIES/Sync_Logs/BABIES_NativeToZFS_SyncLog.txt
elslog=/Volumes/group/active/ELS/Sync_Logs/ELS_NativeToZFS_SyncLog.txt
natoak=/Volumes/iang/BABIES_data
zfsoak=/Volumes/group/active/BABIES

rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_rest/ /Volumes/group/active/BABIES/BABIES_rest/
echo 'Synced Newborn Rest Proc Data from Native Oak to ZFS Oak on' $date >> $babieslog

rsync -rtP --ignore-existing --progress /Volumes/iang/ELS_data/ELS_DTI_Analysis/ELS_T3/ /Volumes/group/users/hoTC/TiffanyELST3/
echo 'Synced DTI Preproc data from from Native Oak to ZFS Oak on' $date >> $elslog

rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_ibeat/BABIES_6month/ /Volumes/group/active/BABIES/BABIES_ibeat/subjDir/BABIES_6month/
rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_ibeat/BABIES_Newborn/ /Volumes/group/active/BABIES/BABIES_ibeat/subjDir/BABIES_Newborn/
echo 'Synced ibeat outputs from Native Oak to ZFS Oak on' $date >> $babieslog

rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_MAMA/ /Volumes/group/active/BABIES/BABIES_MAMA/
echo 'Synced MAMA data from from Native Oak to ZFS Oak on' $date >> $babieslog

rsync -rtP --ignore-existing --progress /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T1/ /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T1/matproc/
rsync -rtP --ignore-existing --progress /Volumes/iang/TIGER_data/TIGER_DTI_Analysis/TIGER-T2/ /Volumes/group/proc/TIGERanalysis/DTI/TIGER-T2/matproc/

rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_ibeat/BABIES_6month/ /Volumes/group/active/BABIES/BABIES_ibeat/subjDir/BABIES_6month/
rsync -rtP --ignore-existing --progress /Volumes/iang/BABIES_data/BABIES_ibeat/BABIES_Newborn/ /Volumes/group/active/BABIES/BABIES_ibeat/subjDir/BABIES_Newborn/
echo 'Synced BABIES ibeat data from from Native Oak to ZFS Oak on' $date >> $babieslog
