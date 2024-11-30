#! /usr/bin/env bash

# Uncomment on LUMI, but when doing this on your laptop you won't have
# this module and may not even have the module command. 
# module try-load lumio

set -x
s3cmd ls
s3cmd ls s3://training.public
s3cmd ls s3://training.private
set +x

echo -e "\nChecking ACLs\n"

set -x

set +x
s3cmd info s3://training.public
s3cmd info s3://training.private

s3cmd info s3://training.public/public-in-public.txt
s3cmd info s3://training.public/private-in-public.txt
s3cmd info s3://training.private/public-in-private.txt
s3cmd info s3://training.private/private-in-private.txt

s3cmd info s3://training.public/HTML/public.html
s3cmd info s3://training.private/HTML/private.html
set -x
