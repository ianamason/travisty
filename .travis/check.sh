#!/bin/bash

# Make sure we exit if there is a failure
# set -e

source ${HOME}/.bash_profile

pyenv versions

#echo $PATH

pip --version
python --version

pip install sympy

git clone https://github.com/ianamason/libpoly.git
cd libpoly
git checkout python3
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  ..
make
make check

exit 0
