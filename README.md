# Databricks CLI Docker Container

Simple Dockerized version of Databricks CLI, bash, git, openssh, python3.7 in an interactive Alpine Linux container.

Run `bash setup.sh` to build Docker image and set aliases.

By default, container is removed between runs but files and configurations persist.

The alias `db-cli` will put you into an interactive terminal.

The alias `db-cli-fresh` will purge the storage volume and put you into an interactive terminal.
