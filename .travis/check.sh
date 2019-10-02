#!/bin/bash

# Make sure we exit if there is a failure
set -e

pyenv versions

pyenv global 3.6

pip --version
python --version
