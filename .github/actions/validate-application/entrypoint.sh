#!/bin/sh -l

pwd
echo "First $1"
echo "Second $2"
echo "Second $application"
time=$(date)
echo "::set-output name=time::$time"
