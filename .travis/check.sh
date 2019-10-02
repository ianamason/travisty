#!/bin/bash

# Make sure we exit if there is a failure
set -e

source ~/.bash_profile

pyenv versions

pip --version
python --version

pyenv global 3.6.7

echo $PATH

pip --version
python --version
