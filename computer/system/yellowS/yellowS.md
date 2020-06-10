
# YellowS

## NASM

`https://www.nasm.us/pub/nasm/releasebuilds/2.14.02`

`rpm -ivh xxxx.rpm`

`sudo apt-get install build-essential nasm`

## Bochs

`sudo apt-get install vgabios bochs bochs-x bximage`

```
tar vxzf bochs-2.3.5.tar.gz
cd bochs-2.3.5
./configure --enable-debugger --enable-disasm
make
sudo make install
```
