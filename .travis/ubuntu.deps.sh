#!/bin/bash

sudo apt-get install curl cmake make libgmp-dev

echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

source ~/.bash_profile

pyenv global 3.6.7
