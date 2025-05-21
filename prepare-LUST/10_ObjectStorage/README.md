# Instructions

## Scripts

-   The `create_buckets.sh`, `delete_buckets.sh` and `list_buckets.sh`
    scripts need `s3cmd` and the default configuration file set up for the
    LUMI training project.

-   The `create_buckets_462000265.sh`, `delete_buckets_462000265.sh` and `list_buckets_462000265.sh`
    scripts need `s3cmd` and a configuration file `~/.s3cfg-lumi-462000265` set
    up for the LUST training materials archive project.

    Furthermore, the `create_buckets_462000265.sh` needs a single command line argument: 
    The training project of the training for which the objects are set up, as two 
    files will be explicitly shared with that project.


## Set up for a new training.

-   Assume training project `project_465XXXXXX`.

-   Use [auth.lumidata.eu](https://auth.lumidata.eu/) to create keys for the projects:
    -   `project_462000265` (LUST LUMI training project)
    -   `project_465XXXXXX` (Project for the actual training)

-   Create the following configuration files for `s3cmd`:
    -   `~/.s3cfg-lumi-462000265` for `project_462000265`
    -   `~/.s3cfg-lumi-465XXXXXX` for the training project `project_465XXXXXX`
    -   `˜/.s3cfg`, a copy of `~/.s3cfg-lumi-465XXXXXX`

-   Make sure that buckets from a previous course in `project_462000265` are removed:

    ```
    ./delete_buckets_462000265.sh
    ```

-   Next create the new buckets. This is done in two steps:

    -   Buckets in the actual training project:

        ```
        ./create_buckets.sh
        ```

    -   Some buckets in the LUST training project to demonstrate access from another project:

        ```
        ./create_buckets_462000265.sh 465XXXXXX
        ```


