#!/bin/bash

function install_awsebcli() {
    pip install --upgrade --user awsebcli
    echo 'export PATH=~/.local/bin:$PATH' >> ${CIRCLECI_HOME}/.bashrc
    echo 'source ~/.bashrc &>/dev/null' >> ${CIRCLECI_HOME}/.bash_profile
}
