#!/bin/sh -l

echo "yarn workspace $1 test"
yarn workspace "$1" test
time=$(date)
echo "::set-output name=time::$time"
