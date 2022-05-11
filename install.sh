#!/bin/bash

chmod +x autotune_float.sh
chmod +x autotune_float.sh

mkdir build;
cd build;
BUILDTOP=`pwd`
git clone https://github.com/rogersce/cnpy.git
cd cnpy
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$BUILDTOP ..
make
make install
