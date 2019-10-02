#!/bin/bash

sudo apt-get install curl cmake make libgmp-dev

echo $PYTHON

echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile;
source ${HOME}/.bash_profile;

if [ "$PYTHON" = "2.7.15" ]; then pyenv install ${PYTHON}; fi
pyenv global ${PYTHON};
