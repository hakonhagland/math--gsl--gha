#! /bin/bash

export PATH="$GSL_INST_DIR"/"$TARBALL_GSL"/bin:"$PATH"
cpan App::cpanminus
cpanm -n Net::SSLeay
cpanm Alien::GSL
cpanm Module::Build
mkdir xs
perl Build.PL
./Build installdeps --cpan_client cpanm
./Build
./Build test
./Build dist
DISTNAME=$(ls -1 Math*.tar.gz)
echo "MATH_GSL_DISTNAME=$DISTNAME" >> $GITHUB_ENV
echo "$DISTNAME" > math-gsl-dist-name.txt
