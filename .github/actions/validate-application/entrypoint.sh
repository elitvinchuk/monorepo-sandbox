#!/bin/sh -l

pwd
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
