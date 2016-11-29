#!/bin/bash
sudo umount /mnt/anubhabmajumdar
make clean
make
./kvfs -o allow_other /home/anubhabmajumdar/kvfs_test /mnt/anubhabmajumdar
