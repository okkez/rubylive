#!/bin/sh

BASE_DIR=/usr/local
RUBY_SRC=$BASE_DIR/src

tar xfj ruby-1.8.7-p72.tar.bz2
tar xfj ruby-1.9.1-preview1.tar.bz2

echo 'deb-src http://cdn.debian.or.jp/debian/ sid main' >> /etc/apt/source.list

apt-get update
apt-get update
apt-get -y build-dep ruby1.8
apt-get -y build-dep ruby1.9

cd $RUBY_SRC/ruby-1.9.1-preview1
./configure --prefix=$BASE_DIR/ruby191pre1 --disable-install-doc \
--program-suffix=19 \
--with-X11-include=/usr/include/X11/ \
--with-tcl-include=/usr/include/tcl8.4/ \
--with-tcllib=tcl8.4 \
--with-tklib=tk8.4
make && make install
make golf

cp $RUBY_SRC/ruby-1.9.1-preview1/goruby $BASE_DIR/ruby191pre1/bin/goruby

cd $RUBY_SRC/ruby-1.8.7-p72
make clean
./configure --prefix=$BASE_DIR/ruby187 --disable-install-doc \
--enable-pthread \
--program-suffix=18 \
--with-X11-include=/usr/include/X11/ \
--with-tcl-include=/usr/include/tcl8.4/ \
--with-tcllib=tcl8.4 \
--with-tklib=tk8.4
make && make install


