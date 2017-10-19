#!/usr/bin/env bash

cd $(dirname $0)
location=$(pwd)
cd ../../../
boost_root=$(pwd)
cd $location

xsltproc.exe \
    --stringparam chunk.quietly 0 \
    --stringparam base.dir $location \
    --stringparam boost.root $boost_root \
    $boost_root/tools/boostbook/xsl/testing/Jamfile.xsl \
    tests.xml
