#!/bin/bash

# Make sure we exit if there is a failure
set -e

pyenv versions

pip --version
python --version

pyenv local 3.6.7

pip --version
python --version
