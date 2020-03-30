#!/bin/sh -l

# Installing dependencies
yarn install --frozen-lockfile

yarn workspace "$1" test

git_hash=$(git rev-parse --short HEAD)

echo "$git_hash"

time=$(date)
echo "::set-output name=time::$time"
