#!/bin/bash -e
NODE_VERSION=node
DATE=$(date +%Y-%m-%d)
BACKUP_DIR=/backup
USER_DIR=/root

if [ ! -d ~/.nvm ]; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
    export NVM_DIR="$USER_DIR/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm install $NODE_VERSION
fi

# usually in ~/.bashrc
export NVM_DIR="$USER_DIR/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use $NODE_VERSION

if ! which wunderline > /dev/null; then
    npm install -g wunderline
fi

if [ ! -e ~/.config/configstore/wunderline.json ]; then
    echo
    echo
    echo "Run the following command:"
    echo "    wunderline auth"
    exit 1
fi

echo "* Backup now wunderlist"
wunderline export > ${BACKUP_DIR}/wunderlist-${DATE}.json
