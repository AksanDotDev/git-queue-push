#!/bin/bash

# Get Origin URL
TARGETRAW=$(git remote get-url origin)
TARGET=${TARGETRAW%%".git"}



while :
do 
    #Test connectivity
    wget -q --spider $TARGET

    if [ $? -eq 0 ]; then
        git push
        break
    fi
done