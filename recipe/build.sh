#!/usr/bin/env bash

cmake -H. \
    -Bbuild -GNinja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -DCMAKE_INSTALL_PREFIX=$PREFIX
cmake --build build/ -- -j${CPU_COUNT}
cmake --build build/ -- install
