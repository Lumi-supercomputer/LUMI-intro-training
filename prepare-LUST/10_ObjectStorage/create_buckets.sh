#! /usr/bin/env bash

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
# module try-load lumio

# Go to the directory with this script
cd $(dirname $0)

s3cmd --acl-public  mb s3://training.public
s3cmd --acl-private mb s3://training.private

s3cmd --acl-public  put buckets/training.public/public-in-public.txt    s3://training.public
s3cmd --acl-private put buckets/training.public/private-in-public.txt   s3://training.public
s3cmd --acl-public  put buckets/training.private/public-in-private.txt  s3://training.private
s3cmd --acl-private put buckets/training.private/private-in-private.txt s3://training.private

s3cmd --acl-public  put buckets/training.public/HTML/public.html   s3://training.public/HTML/
s3cmd --acl-private put buckets/training.private/HTML/private.html s3://training.private/HTML/

set -x
s3cmd ls
s3cmd ls s3://training.public
s3cmd ls s3://training.private
set +x
