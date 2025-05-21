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

s3cmd -c ~/.s3cfg-lumi-$project --acl-public  mb s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project --acl-private mb s3://training.private

s3cmd -c ~/.s3cfg-lumi-$project --acl-public  put buckets/training.public/public-in-public.txt    s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project --acl-private put buckets/training.public/private-in-public.txt   s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project --acl-public  put buckets/training.private/public-in-private.txt  s3://training.private
s3cmd -c ~/.s3cfg-lumi-$project --acl-private put buckets/training.private/private-in-private.txt s3://training.private

s3cmd -c ~/.s3cfg-lumi-$project --acl-public  put buckets/training.public/HTML/public.html   s3://training.public/HTML/
s3cmd -c ~/.s3cfg-lumi-$project --acl-private put buckets/training.private/HTML/private.html s3://training.private/HTML/

set -x
s3cmd -c ~/.s3cfg-lumi-$project ls
s3cmd -c ~/.s3cfg-lumi-$project ls s3://training.public
s3cmd -c ~/.s3cfg-lumi-$project ls s3://training.private
set +x
