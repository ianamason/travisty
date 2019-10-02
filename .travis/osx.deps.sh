#!/bin/bash

brew outdated cmake || brew upgrade cmake
brew outdated gmp || brew upgrade gmp
brew outdated pyenv || brew upgrade pyenv

# no python 3.6 on osx as of 10/2019
pyenv install 3.6
