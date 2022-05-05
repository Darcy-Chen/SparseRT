# gpu-sparsert

More details will be forthcoming. This will basically work on an Amazon T4 instance with the deep learning AMI.

Dependencies:
- Cnpy. Please install it and update the include path in the scripts.
- Cuda toolchain, etc. 
- Pytorch

To try SpMM, type autotune_float.sh 0
To try sparse convolution, type bash autotune_conv_float.sh 512 512 7 filter_bg4.npy

### Installation steps
- git clone https://github.com/Darcy-Chen/SparseRT.git
- chmod +x install.sh
- chmod +x autotune_float.sh
- chmod +x autotune_float.sh
- ./install.sh
- cd /etc/ld.so.conf.d
- nano cnpy.conf
- the content of this file should be path/to/install/dir so default would be /jetson-inference/SparseRT/build/lib/
- sudo ldconfig

When running on Jetson using Docker Container, run this before installing:
- apt-get update
- apt-get install -y sudo
- sudo apt-get install unzip

### Notes
- If argument mismatch error appears check the testing.ptx file and adjust line 134 of conde_gen_ptx.py to be the correct starting block
- At line 86 in autotune_float.sh and line 264 in code_gen_ptx.py; at line 56 in autotune_conv_float.sh and line 374 in code_conv_ptx.p, change the `-arch=sm75` to corresponding architecture of your gpu (https://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/) 
- At line 86 in autotune_float.sh and line 264 in code_gen_ptx.py; at line 56 in autotune_conv_float.sh and line 374 in code_conv_ptx.py, change -I and -L location to where your cnpy library is located