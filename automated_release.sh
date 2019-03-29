#!/bin/bash

# Set release version
RELEASE_VERSION="$1"

# Changing release version
source ./set_release_version.sh $RELEASE_VERSION

# Commining changes to GitHub
git add .
git commit -m "Release: $RELEASE_VERSION"
git push origin master
