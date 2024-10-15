#!/bin/bash


sudo fdisk /dev/sdc << EOF

n
p
1

+2G
n
p
2

+2G
n
p
3

+2G
n
e

+2G
n

+1G
w
EOF

echo "Mis particiones del parcial 1."
sudo fdisk -l /dev/sdc
echo "formato de particiones: "
sudo mkfs.ext3 /dev/sdc1 && sudo mkfs.ext3 /dev/sdc2 && sudo mkfs.ext3 /dev/sdc3 && sudo mkfs.ext3 /dev/sdc5
sudo lsblk -f
echo "Montar: "
sudo mkdir -p /mnt/{sdc1,sdc2,sdc3,sdc5}
sudo mount /dev/sdc1 /mnt/sdc1 && sudo mount /dev/sdc2 /mnt/sdc2 && sudo mount /dev/sdc3 /mnt/sdc3 && sudo mount /dev/sdc5 /mnt/sdc5


#Guardado permanente

