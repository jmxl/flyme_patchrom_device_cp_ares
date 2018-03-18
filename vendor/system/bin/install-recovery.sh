#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:40908076:996788c0d9058248967b00480f4cc377549c3c5e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:36361512:991dcccf39455e21386edbce4c602cdb9f7ec3c9 EMMC:/dev/block/bootdevice/by-name/recovery 996788c0d9058248967b00480f4cc377549c3c5e 40908076 991dcccf39455e21386edbce4c602cdb9f7ec3c9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
