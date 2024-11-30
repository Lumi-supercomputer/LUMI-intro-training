#! /usr/bin/env bash

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
# module try-load lumio

# Go to the directory with this script
cd $(dirname $0)

s3cmd del --recursive --force s3://training.public
s3cmd del --recursive --force s3://training.private

s3cmd rb s3://training.public
s3cmd rb s3://training.private

#s3cmd ls
