#!/bin/bash

echo "VSCode Back-Uperer"

# change to my backup location
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

# run the backup
CODE=$( which code )
$CODE --list-extensions > VSfile
# remove and make a fresh copy of .vscode
rm -r .vscode
cp -R $HOME/Documents/repos/.vscode .

# add to git repo
git add .
git commit -m "Regular automated backup"
git push
