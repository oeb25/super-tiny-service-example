#!/bin/bash

cd $1

if [[ $2 == 'release' ]]; then
    echo 'Building for release...'
    
    CGO_ENABLED=0 go build -a -installsuffix cgo -o app
    
    docker-compose up --build -d $1
else
    go build -o app
    
    docker-compose restart $1
fi
