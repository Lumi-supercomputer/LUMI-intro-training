#! /bin/bash

# We really want GNU tar which is the tar command on Linux, but, e.g., on BSD-derived 
# OSes like macOS it needs to be installed separately and the BSD tar does not offer 
# the options we want.
if command -v gtar >&/dev/null 
then TAR=gtar
else TAR=tar
fi

$TAR -vcf exercises.tar \
    --exclude "solution*.sh" --exclude "*.x" --exclude ".ptp*" --exclude "slurm*.out" --exclude  ".DS_Store" \
    LICENSE CPE EasyBuild
