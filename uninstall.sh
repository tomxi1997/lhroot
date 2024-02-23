#!/system/bin/sh
MODDIR=${0%/*}

export PATH=$PATH:/system/xbin:/system/bin

/system/bin/killlinux /data/ubuntu22 
sleep 1
/system/bin/killlinux /data/ubuntu20
sleep 1
/system/bin/killlinux /data/ubuntu18
sleep 1
mv /system/bin/bootlinux /system/bin/bootlinux.bak

#请确保所有挂载都已取消，否则十分危险，有变砖，数据丢失风险。建议是运行手动运行killlinux /data/ubuntuxx，lhroot选择移除chroot 。然后在执行以下命令，或者直接别卸载吧。。
#rm -rf /data/ubuntu*