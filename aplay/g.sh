

FUCK!

~/tmp $ scp root@10.100.100.172:/system/lib/libasound.so .
~/tmp $ file libasound.so 
libasound.so: ELF 32-bit LSB shared object, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /system/bin/linker, BuildID[md5/uuid]=f447c418b2c14e2a20b3aad366b4d0d8, stripped

~/tmp $ scp root@10.100.100.172:/data/data/com.termux/files/usr/lib/libLLVM.so .
~/tmp $ file libLLVM.so 
libLLVM.so: ELF 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamically linked, stripped


gcc aplay.c -I.. -I../include -lrt -lasound -lm -ldl -lpthread

# You may add -m32 to solve this issue. but some compiler doesnt support it. (gcc termux)

