#! /usr/bin/env bash

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
# module try-load lumio

set -x
s3cmd -c ~/.s3cfg-lumi-462000265 ls
s3cmd -c ~/.s3cfg-lumi-462000265 ls s3://intro-training.public
s3cmd -c ~/.s3cfg-lumi-462000265 ls s3://intro-training.private
set +x

echo -e "\nChecking ACLs\n"

set -x

set +x
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.public
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.private

s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.public/public-in-public.txt
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.public/private-in-public.txt
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.private/public-in-private.txt
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.private/private-in-private.txt

s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.public/HTML/public.html
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.private/HTML/private.html

s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.public/HTML/shared.html
s3cmd -c ~/.s3cfg-lumi-462000265 info s3://intro-training.private/HTML/shared.html
set -x
