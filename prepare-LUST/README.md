# Material not meant for regular users.

-   `make_tar.sh` prepares the tar file with the exercises to distribute to 
    the users.

    It takes one optional argument, the tag to be used in the filename of the generated tar
    file. Without the optional argument, the script will generate `exercises.tar` and its
    bzip2-compressed version, with the optional argument the filename becomes
    `exercises-<tag>.tar` and its bzip2-compressed version, with `<tag>` the value
    of the argument.

-   05_SoftwareStack: Some EasyConfigs to be installed on LUMI for the exercises.

-   10_ObjectStorage: Scripts to create the necessary buckets and objects for the
    exercises on LUMI-O.
