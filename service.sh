#!/system/bin/sh
MODDIR=${0%/*}

while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done
while [ ! -d "/sdcard/Android" ]; do
    sleep 1
done

export PATH=$PATH:/system/xbin:/system/bin

/system/bin/bootlinux /data/ubuntu22 
sleep 1
/system/bin/bootlinux /data/ubuntu20
sleep 1
/system/bin/bootlinux /data/ubuntu18

