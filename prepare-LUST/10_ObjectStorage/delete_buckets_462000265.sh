#! /usr/bin/env bash

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
# module try-load lumio

# Go to the directory with this script
cd $(dirname $0)

s3cmd -c ~/.s3cfg-lumi-462000265 del --recursive --force s3://intro-training.public
s3cmd -c ~/.s3cfg-lumi-462000265 del --recursive --force s3://intro-training.private

s3cmd -c ~/.s3cfg-lumi-462000265 rb s3://intro-training.public
s3cmd -c ~/.s3cfg-lumi-462000265 rb s3://intro-training.private

#s3cmd -c ~/.s3cfg-lumi-462000265 ls
