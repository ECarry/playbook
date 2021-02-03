#!/bin/bash

# work dir
PWD=pwd

# unzip pip tar package
tar zxf pip-20.3.4.tar.gz && cd $PWD/pip-20.3.4

# install pip
python setup.py install