#!/bin/bash

source ${HOME}/.bash_profile

pyenv versions

pip --version
python --version

git clone https://github.com/ianamason/libpoly.git
cd libpoly
git checkout python3
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  ..
make
make check

exit $?
