#!/bin/bash

cd /tmp

WORK_DIR=`pwd`

tar -zxf nginx-1.18.0.tar.gz

cd $WORK_DIR/nginx-1.18.0/

./configure --prefix=/app/nginx  \
--user=nginx \
--group=nginx \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-file-aio \
--with-http_dav_module \
--with-stream \
--with-stream_ssl_module \
--with-stream_ssl_module \
--with-pcre \
--with-http_v2_module \
--with-http_gzip_static_module \
--with-http_sub_module

make && make install
