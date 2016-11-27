#!/bin/bash
#sudo umount /mnt/gsudan
#sudo rmdir /mnt/gsudan
#rm -rf /home/gsudan/kvfs_test
#sudo mkdir /mnt/gsudan
#sudo chmod 777 /mnt/gsudan
#sudo chown gsudan /mnt/gsudan
#mkdir /home/gsudan/kvfs_test
#chmod 777 /home/gsudan/kvfs_test
#chown gsudan /home/gsudan/kvfs_test
#./kvfs -d /home/gsudan/kvfs_test /mnt/gsudan
cd /mnt/gsudan
ls -l
df -a
mkdir test1
chmod 777 test1
cd test1
echo hello > file_test1.txt
truncate -s 2 file_test1.txt
mv file_test1.txt file_test.txt
cat file_test.txt
mkdir test2
chmod 772 test2
cd test2
echo hello_world_1 > file_test2.txt
echo hello_world_2 > file_test3.txt
unlink file_test2.txt
unlink file_test3.txt
cd ..
mkdir test3
rmdir test3
ln file_test.txt /mnt/gsudan/test1/test2/link1
ln -s file_test.txt /mnt/gsudan/test1/test2/link2
readlink -f ./test2/link1/readhard.txt
readlink -f ./test2/link2/readsoft.txt
################################################################
#unlink /mnt/gsudan/test1/test2/link1/readhard.txt
#unlink /mnt/gsudan/test1/test2/link1/readsoft.txt
#rmdir /mnt/gsudan/test1/test2
#unlink /mnt/gsudan/test1/file_test.txt
#rmdir /mnt/gsudan/test1
