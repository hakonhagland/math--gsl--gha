#! /bin/bash

wget https://www.cpan.org/src/5.0/perl-5.32.0.tar.gz
tar zxvf perl-5.32.0.tar.gz
cd perl-5.32.0
sh Configure -des -Dprefix=$GITHUB_WORKSPACE/perl -Dman1dir=none -Dman3dir=none
make
make install

