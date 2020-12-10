
# exFAT

[Q] How use exfat on Linux?
[origin] autoconf, fuse
[tools] exfat-fuse

[autoconf] yum install autoconf
[fuse] yum install fuse-devel

[Q] How install exfat-fuse?
- git clone https://github.com/relan/exfat.git
- autoreconf --install
- ./configure
- make
- sudo make install
- sudo make uninstall

[error] configure: error: Package requirements (fuse) were not met:
No package 'fuse' found
- need fuse
- yum install fuse-devel
- git clone https://github.com/libfuse/libfuse.git
- meson

[python3] 
- pip3 install meson
