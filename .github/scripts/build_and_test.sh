#! /bin/bash

export PATH="$GSL_INST_DIR"/"$TARBALL_GSL"/bin:"$PATH"
cpanm -n Net::SSLeay
cpanm Alien::GSL
cpanm Module::Build
mkdir -p xs
perl Build.PL
./Build installdeps --cpan_client cpanm
./Build
./Build test
