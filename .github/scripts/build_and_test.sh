#! /bin/bash

export LD_LIBRARY_PATH=${GSL_INST_DIR}/${TARBALL_GSL}/lib
export PATH="$GSL_INST_DIR"/"$TARBALL_GSL"/bin:"$PATH"
cpanm -n Net::SSLeay
cpanm -n Alien::Build
cpanm Alien::GSL
cpanm Module::Build
mkdir -p xs
perl Build.PL
./Build installdeps --cpan_client cpanm
./Build
./Build test
