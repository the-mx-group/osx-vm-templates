#!/bin/bash

if [ "${SALT}" == "none" ]; then
    exit
fi

su ${USERNAME} -c "/usr/local/bin/brew install saltstack"

if [ "${SALT_MASTER}" == "" ]; then
    exit
fi

mkdir -p /etc/salt/minion.d
echo master: ${SALT_MASTER} > /etc/salt/minion.d/master.conf
