# Resources of Trimui Smart Pro.

For those who want to customize Trimui Smart Pro, these resources may be
helpful. Download from [releases](https://github.com/jaxvanyang/smartpro/releases/latest).

## Info

Mounted filesystems:

```console
# mount
/dev/root on /rom type ext4 (ro,noatime)
devtmpfs on /dev type devtmpfs (rw,relatime,size=465916k,nr_inodes=116479,mode=755)
proc on /proc type proc (rw,nosuid,nodev,noexec,noatime)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,noatime)
cgroup on /sys/fs/cgroup type cgroup (rw,nosuid,nodev,noexec,relatime,cpu)
pstore on /sys/fs/pstore type pstore (rw,relatime)
tmpfs on /tmp type tmpfs (rw,nosuid,nodev,noatime)
/dev/by-name/rootfs_data on /overlay type ext4 (rw,sync,relatime,data=ordered)
overlayfs:/overlay on / type overlay (rw,noatime,lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,mode=600,ptmxmode=000)
none on /sys/kernel/config type configfs (rw,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,noatime)
adb on /dev/usb-ffs/adb type functionfs (rw,relatime)
/dev/mmcblk1p1 on /mnt/SDCARD type vfat (rw,relatime,fmask=0000,dmask=0000,allow_utime=0022,codepage=437,iocharset=utf8,shortname=mixed,errors=continue)
/dev/by-name/UDISK on /mnt/UDISK type ext4 (rw,relatime,data=ordered)
```

## Resources

- `smartpro_rom.tar.gz`: Dumped from `/rom`, basicly the rootfs, see [The OpenWrt Flash Layout](https://openwrt.org/docs/techref/flash.layout#explanations).
  `/rom/etc/rc.d/S99runtrimui` is the entry point of customization, it will run
  all scripts under `/mnt/SDCARD/System/starts` at startup.
