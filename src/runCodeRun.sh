#!/bin/bash
sudo umount /mnt/anubhabmajumdar
make clean
make
./kvfs /home/anubhabmajumdar/kvfs_test /mnt/anubhabmajumdar
