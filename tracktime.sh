#!/bin/bash

SECONDS=0

starttime=$(date)
comment=$1
dir=~/work/timetracking/
filename=`date +%Y-%m-%d`'.txt'

echo "Press Ctrl + d to stop time tracking"

if [ ! -f $dir''$filename ]
    then
        touch $dir''$filename
fi

time read

cat <<EOF >> $dir''$filename
Comment:        $comment
Started on:     $starttime
Ended on:       $(date)

Duration:       $((($SECONDS / 60) + 1)) minutes

----------------------------

EOF
