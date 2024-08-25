#!/bin/bash


echo "

# Setting up bitbucket
"
. ~/.ssh/key-manager.sh bb
. ~/.ssh/key-manager.sh gh
echo
cat ~/.ssh/bitbucket.pub
cat ~/.ssh/github.pub
echo "
    # add to settings
    https://bitbucket.org/account/settings/ssh-keys/
    https://github.com/settings/ssh/new/

"
