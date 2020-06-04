#!/usr/bin/env bash
mkdir -p build
pushd build
cmake -DCMAKE_INSTALL_PREFIX=../installed -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_C_COMPILER=/usr/bin/clang-8 -DCMAKE_CXX_COMPILER=/usr/bin/clang++-8 ..
make -j8 install
popd
