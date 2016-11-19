#!/bin/bash
sudo umount /home/anubhabmajumdar/Desktop/mountpt
make clean
sudo make
./kvfs /home/anubhabmajumdar/Desktop/kvfs_test /home/anubhabmajumdar/Desktop/mountpt -o allow_other
