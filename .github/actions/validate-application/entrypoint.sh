#!/bin/sh -l

git_hash=$(git rev-parse --short HEAD)

# Installing dependencies
yarn install --frozen-lockfile

yarn workspace "$1" test

docker -v

echo "$git_hash"

time=$(date)
echo "::set-output name=time::$time"
