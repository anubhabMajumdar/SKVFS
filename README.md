# SKVFS
Secure key value file system for Ubuntu

When designing a "modern" file system, we care about performance of accessing from multiple clients as well as the security. In this project, we will implement a file system that "somewhat" fits the above goal using the fuse -- SKVFS (Secure KeyValue File System).

The SKVFS is different from conventional file systems in two ways:

First, to make the file system efficient for sharing among multiple clients, the file system uses a flat key-value structure as GoogleFS. There is no real directory supports. Every file, including directories, is translated into a 256-bit key. The file system maintains some data structure to map the key to a real location.

Second, to make the file system more secure, the file system uses MD5 to hash file names. As a result, anyone else cannot easily figure out what was the original filename, directory structure. Although MD5 can be brute-force attacked these days, it still take quite a while for an attacker to figure out. 

How to start

To begin, you need to make sure your linux install contains the following:
1. Fuse (2.9.7). You may download fuse 2.9.7 from https://github.com/libfuse/libfuse/releases/tag/fuse-2.9.7. Please following the instruction in their website and install the package into your linux install

2. OpenSSL library. We need this library for MD5 functions. In ubuntu, you can get this package installed by using the following command:
sudo apt-get install libssl-dev

You can try use the kvfs to create a user space file system. For example, you can create an empty directory (highly recommended) under your home directory (e.g. /home/hungwei/kvfs_test), and then also create an empty directory under /mnt (e.g. /mnt/hungwei). You need to make sure that the directory that you created under /mnt direcotry gives you the full permissions (e.g. use chmod to change mode or chown to change ownership). Finally, you can "./kvfs /home/hungwei/kvfs_test /mnt/hungwei".
Use cd into /mnt/hungwei and use it like any filesystem. Create files and directory. Use ls -l and see the difference!
