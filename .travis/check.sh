#!/bin/bash

# Make sure we exit if there is a failure
set -e

source ${HOME}/.bash_profile

pyenv versions

#echo $PATH

pip --version
python --version

git clone https://github.com/ianamason/libpoly.git
cd libpoly
git checkout python3
mkdir -p build
cd build
if [ "$TRAVIS_OS_NAME" = "osx" ]; then cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  ..; fi
if [ "$TRAVIS_OS_NAME" = "linux" ]; then cmake -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} ..; fi
make
make check
