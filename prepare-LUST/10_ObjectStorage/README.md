# Instructions

-   The `create_buckets.sh`, `delete_buckets.sh` and `list_buckets.sh`
    scripts need `s3cmd` and the default configuration file set up for the
    LUMI training project.

-   The `create_buckets_462000265.sh`, `delete_buckets_462000265.sh` and `list_buckets_462000265.sh`
    scripts need `s3cmd` and a configuration file `~/.s3cfg-lumi-462000265` set
    up for the LUST training materials archive project.

    Furthermore, the `create_buckets_462000265.sh` needs a single command line argument: 
    The training project of the training for which the objects are set up, as two 
    files will be explicitly shared with that project.

