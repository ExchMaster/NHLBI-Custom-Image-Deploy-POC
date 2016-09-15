#Creates volumes on two disks, /dev/sdc & /dev/sdd

pvcreate /dev/sdc /dev/sdd

#Create volume group 

vgcreate vg1 /dev/sdc /dev/sdd

#Create logical volume

lvcreate -l 100%VG -i 2 -n lv1 vg1

#Formates logical volume using XFS

mkfs.xfs /dev/vg1/lv1 -f

#Creates mount point and updates fstab so mount point persists during reboots, automatically mounts volumes for current session

mkdir -p /data

#Add to fstab

echo /dev/vg1/lv1 /data                   xfs     defaults        0 0 >> /etc/fstab

#mount volumes

mount -a

#Allow everyone access to /data

chmod 777 /data