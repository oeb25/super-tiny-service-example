#!/bin/bash

if [[ $2 == 'release' ]]; then
    RELEASE= true
fi

cd $1

if [[ RELEASE == true ]]; then
    echo 'Building for release...'
    cargo build --target x86_64-unknown-linux-gnu --release
    
    mv target/x86_64-unknown-linux-gnu/release/$1 ./app
else
    cargo build --target x86_64-unknown-linux-gnu

    mv target/x86_64-unknown-linux-gnu/debug/$1 ./app
fi


if [[ RELEASE == true ]]; then
    docker-compose up -d --build $1
else
    docker-compose restart $1
fi
