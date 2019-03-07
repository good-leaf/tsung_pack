#!/bin/bash
tar -zxvf erlang.tar.gz
cp ./erlang/bin/erl /usr/local/bin/tsung_erl
cp -r ./erlang /usr/local/lib/tsung_erlang
rm -rf erlang
cp -r ./share/doc/tsung /usr/local/share/doc/
cp -r ./share/tsung /usr/local/share/
cp -r ./tsung /usr/local/lib/
cp -r ./tsung/bin/tsung /usr/local/bin/
cp -r ./tsung/bin/tsung-recorder /usr/local/bin/
yum -y install gnuplot
yum -y install perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker cpan
tar -zxvf ./Template-Toolkit-2.24.tar.gz
cd Template-Toolkit-2.24
perl Makefile.PL
make
make install
cd ../
rm -rf Template-Toolkit-2.24
