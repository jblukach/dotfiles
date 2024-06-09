#!/usr/bin/bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

npm install -g aws-cdk

chmod 750 /workspaces/.codespaces/.persistedshare/dotfiles/nag.py
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/nag.py /tmp/nag.py
