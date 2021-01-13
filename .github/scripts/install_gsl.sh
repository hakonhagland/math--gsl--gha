#! /bin/bash

GSL_VERSION="2.6"
GSL_MIRROR=http://mirrors.kernel.org/gnu/gsl
GSL_INST_DIR="gsl"
GSL_SRC_DIR="gsl-source"
TARBALL_GSL=gsl-"$GSL_VERSION"
TARBALL="$TARBALL_GSL".tar.gz

mkdir -p "$GSL_SRC_DIR"
cd "$GSL_SRC_DIR"
wget "$GSL_MIRROR"/"$TARBALL" --retry-connrefused --timeout=900 
tar zxvf "$TARBALL"
cd "$TARBALL_GSL"
./configure --prefix "$GSL_INST_DIR"/"$TARBALL_GSL"
make -j$(nproc)
make install
