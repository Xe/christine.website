#!/bin/bash

set -e
set -x

apt-get update
apt-get install -y --no-install-recommends build-essential make golang
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
mkdir /oleg/src -p
wget https://github.com/infoforcefeed/OlegDB/archive/v.0.1.5.tar.gz -O /oleg/src/oleg.tar.gz
cd /oleg/src && tar xf oleg.tar.gz
cd OlegDB-v.0.1.5 && make && make install

mv /seed/oleg/olegdb.conf /oleg/db.conf
