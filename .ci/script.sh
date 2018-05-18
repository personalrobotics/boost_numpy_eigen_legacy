#!/usr/bin/env bash

set -ex

mkdir build
cd build
cmake .. -DBOOST_NUMPY_EIGEN_PYTHON_VERSION=$TRAVIS_PYTHON_VERSION
make -j4
sudo make install