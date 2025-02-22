#!/usr/bin/bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

npm install -g aws-cdk
npm install -g aws-cdk-lib

chmod 750 /workspaces/.codespaces/.persistedshare/dotfiles/nag.py
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/nag.py /workspaces/nag.py

curl https://sh.rustup.rs -sSf | sh -s -- -y
source "$HOME/.cargo/env"
