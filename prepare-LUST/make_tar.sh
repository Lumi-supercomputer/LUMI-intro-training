#! /bin/bash
# The script has one optional argument: A tag to use in the filename of the generated
# tar fil: exercises-<tag>.tar. Without that argument, it will generate exercises.tar
#

# Go to the root of the repository
cd $(dirname $0)
cd ..

# Check if we have a command line argument.
if [ "$#" -eq 0 ]
then
    tarfile='exercises.tar'
else
    tarfile="exercises-$1.tar"
fi

# We really want GNU tar which is the tar command on Linux, but, e.g., on BSD-derived 
# OSes like macOS it needs to be installed separately and the BSD tar does not offer 
# the options we want.
if command -v gtar >&/dev/null 
then TAR=gtar
else TAR=tar
fi

echo -e "\nNow generating $tarfile and $tarfile.bz2...\n"
$TAR -vcf $tarfile \
    --exclude "solution*.sh" --exclude "*.x" --exclude ".ptp*" --exclude "slurm*.out" --exclude  ".DS_Store" \
    LICENSE CPE EasyBuild
bzip2 --keep -9 $tarfile
