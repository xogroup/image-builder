#!/bin/bash

function install_awsebcli() {
    pip install --upgrade --user awsebcli
    export PATH=~/.local/bin:$PATH
    echo 'export PATH=~/.local/bin:$PATH' >> ${CIRCLECI_HOME}/.circlerc
    echo 'export PATH=~/.local/bin:$PATH' >> ${CIRCLECI_HOME}/.bashrc
    source ${CIRCLECI_HOME}/.bashrc
    source ${CIRCLECI_HOME}/.circlerc
}
