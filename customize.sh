# Set permissions
ui_print "- Setting permissions"
set_perm $MODPATH/system/bin/make_image 0 0 0755
set_perm $MODPATH/system/bin/mount_image 0 0 0755
set_perm $MODPATH/system/bin/lhroot 0 0 0777
set_perm $MODPATH/system/bin/bootlinux 0 0 0755
set_perm $MODPATH/mod-util.sh 0 0 0777
set_perm $MODPATH/system/bin/killlinux 0 0 0755
set_perm $MODPATH/system/bin/busybox 0 0 0755

ui_print " ";
ui_print " ";
ui_print "正在解压rootfs.....";
tar -C /data/ -xf $MODPATH/ubuntu22.tar.xz
tar -C /data/ -xf $MODPATH/ubuntu20.tar.xz
tar -C /data/ -xf $MODPATH/ubuntu18.tar.xz
#tar -C /data/ubuntu16 -xf $MODPATH/ubuntu16.tar.xz

ui_print " ";
ui_print " ";
ui_print "正在删除多余文件";
rm $MODPATH/*.tar.xz


ui_print " ";
ui_print " ";
ui_print "专为在安卓系统上构建安卓内核的chroot环境 基本配置好，开箱即用。容器环境为Ubuntu18.04-22.04，包含3个容器。账号和密码都为:root 连接方式:ssh root@localhost -p xxxx (xxxx取值分别为: 6618 ,6620 ,6622)";

ui_print " ";
ui_print " ";
ui_print " 重点注意，重点注意，重点注意，重要事情说三遍，否则后果自负。（有数据丢失，变砖风险）";
ui_print " ";
ui_print " 在卸载该模块时请确保所有容器都停止运行，解除相关挂载，防止意外发生";
ui_print " ";
ui_print " 在卸载该模块时请确保所有容器都停止运行，解除相关挂载，防止意外发生";
ui_print " ";
ui_print " 在卸载该模块时请确保所有容器都停止运行，解除相关挂载，防止意外发生";



ui_print " ";
ui_print " ";
ui_print "刷入完成，重启设备使其生效";
