#! /usr/bin/env bash

if [ $# -ne 1 ]
then
   echo "This script needs an argument: The project 46YXXXXXX used for this exercise."
   exit
fi
project="$1"

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
module try-load lumio

# Go to the directory with this script
cd $(dirname $0)

s3cmd -c ~/.s3cfg-lumi-$project del --recursive --force s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project del --recursive --force s3://training.private

s3cmd -c ~/.s3cfg-lumi-$project rb s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project rb s3://training.private

#s3cmd ls
