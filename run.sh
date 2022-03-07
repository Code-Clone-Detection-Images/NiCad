#!/usr/bin/env bash

# This script is only used to run the dockercontainer built by the makefile and mount the pwd
# TODO: allow for language
echo "[Script] Using docker: $(docker -v)"
docker run --volume "$(pwd)/$1:/home/nicad-user/data/sub" fedora-nicad:latest "/home/nicad-user/data/sub" "$2" # needs to be at least one above
