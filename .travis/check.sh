#!/bin/bash

# Make sure we exit if there is a failure
set -e

source ${HOME}/.bash_profile

pyenv versions

#echo $PATH

pip --version
python --version
