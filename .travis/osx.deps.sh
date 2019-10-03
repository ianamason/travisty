#!/bin/bash

brew outdated cmake || brew upgrade cmake
brew outdated gmp || brew upgrade gmp
brew outdated pyenv || brew upgrade pyenv;

echo $PYTHON


echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile;
source ${HOME}/.bash_profile;

# no python 3.6.7 on osx as of 10/2019;
pyenv install ${PYTHON};
pyenv global ${PYTHON};


pyenv versions

pip --version
python --version


pip install sympy
