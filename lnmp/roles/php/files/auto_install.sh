#!/bin/bash
###
 # @Date: 2021-03-15 10:35:39
 # @LastEditors: ECarry
 # @LastEditTime: 2021-03-15 11:40:50
 # @Description: 
### 
cd /tmp
WORKDIR=`pwd`

tar -zxf /tmp/php-7.4.15.tar.gz

cd $WORKDIR/php-7.4.15

./configure --prefix=/app/php \
--enable-mysqlnd \
--with-mysqli=mysqlnd \
--enable-mysqlnd-compression-support \
--with-pdo-mysql=mysqlnd \
--with-openssl  \
--with-zlib  \
--with-config-file-path=/ect \
--with-config-file-scan-dir=/etc/php.d \
--enable-mbstring \
--enable-xml \
--enable-sockets \
--enable-fpm \
--enable-maintainer-zts \
--enable-exif \
--disable-fileinfo \
--disable-mbregex \
--with-freetype \
--with-jpeg \
--enable-gd  \
--enable-gd-jis-conv

make && make install