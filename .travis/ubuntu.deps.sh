#!/bin/bash

sudo apt-get install curl cmake make libgmp-dev

echo $PYTHON

echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile;
source ${HOME}/.bash_profile;

pyenv global ${PYTHON};
