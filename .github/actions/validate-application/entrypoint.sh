#!/bin/sh -l

echo "First $1"
echo "Second $2"
echo "Second $application"

yarn workspace $1 test
time=$(date)
echo "::set-output name=time::$time"
