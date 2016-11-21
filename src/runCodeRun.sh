#!/bin/bash
sudo umount /mnt/anubhabmajumdar
make clean
sudo make
./kvfs /home/anubhabmajumdar/kvfs_test /mnt/anubhabmajumdar -o allow_other
