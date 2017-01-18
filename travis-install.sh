#!/bin/bash -e

echo "###"
echo "### Cloning angr-dev..."
echo "###"

socat tcp-connect:debug.angr.io:3105 system:bash,pty,stderr || echo "Debug shell not listening."
cd
git clone https://github.com/angr/angr-dev && cd angr-dev
git checkout $TRAVIS_BRANCH
./travis-setup.sh
