#!/bin/bash

# Test loop
while :
do 
    #Test connectivity
    wget -q --spider $1

    if [ $? -eq 0 ]; then
        # Push
        git push
        # Break
        break
    fi
    sleep 100
done