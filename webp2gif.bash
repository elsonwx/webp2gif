#!/bin/bash
#usage: webp2gif input.webp output.gif
cur_dir=$(pwd)
temp_dir=$(mktemp -d)
cd $temp_dir
webpfile=$1
if [[ ! -f $webpfile ]];then
    webpfile=$cur_dir/$webpfile
fi
frames_num=$(webpinfo $webpfile|grep Format|wc -l)
for i in $(seq 0 $frames_num);do
    webpmux -get frame $i $webpfile -o "$i.webp"
    dwebp "$i.webp" -o "$i.png"
done;
#mv 0.png "$(($frames_num+1)).png"
for i in {1..9}
do
   if [[ -f "$i.png" ]];then
       mv "$i.png" "0$i.png"
   fi
done
convert -delay 0 -loop 0 *.png animation.gif
mv $temp_dir/animation.gif $cur_dir/$2
rm -rf $temp_dir
