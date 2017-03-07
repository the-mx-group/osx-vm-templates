#!/bin/bash

if [ "${BREW}" == "none" ]; then
    exit
fi

su ${USERNAME} -c '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
