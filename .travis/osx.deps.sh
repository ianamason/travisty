#!/bin/bash

brew outdated cmake || brew upgrade cmake
brew outdated gmp || brew upgrade gmp
brew outdated pyenv || brew upgrade pyenv


echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile



source ${HOME}/.bash_profile

# no python 3.6.7 on osx as of 10/2019
pyenv install 3.6.7

pyenv global 3.6.7

echo $PYTHON
