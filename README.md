# gpu-sparsert

More details will be forthcoming. This will basically work on an Amazon T4 instance with the deep learning AMI.

Dependencies:
- Cnpy. Please install it and update the include path in the scripts.
- Cuda toolchain, etc. 
- Pytorch

To try SpMM, type autotune_float.sh 0
To try sparse convolution, type bash autotune_conv_float.sh 512 512 7 filter_bg4.npy

### Installation steps
- chmod +x install.sh
- chmod +x autotune_float.sh
- chmod +x autotune_float.sh
- ./install.sh
- add a file named cnpy.conf to /etc/ld.so.conf.d
- the content of this file should be path/to/install/dir so default would be /usr/share/lib/
- run sudo ldconfig
