#!/bin/bash

sudo apt-get install curl cmake make libgmp-dev

echo $PYTHON

if [ "$PYTHON" = "3.6.7" ];
then
    echo 'eval "$(pyenv init -)"' >> ${HOME}/.bash_profile;
    source ${HOME}/.bash_profile;
    pyenv global 3.6.7;
fi
