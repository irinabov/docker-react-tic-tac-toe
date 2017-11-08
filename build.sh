#!/bin/bash -ex
# Another test
home=$PWD
dnf -y update
dnf -y install nodejs git sed
git clone https://github.com/irinabov/react-tic-tac-toe.git
cd react-tic-tac-toe
npm install
sed -i.tmp 's:if(this.disableHostCheck) return true:return true:' /react-tic-tac-toe/node_modules/webpack-dev-server/lib/Server.js
dnf clean all
exit
