#!/bin/bash

# Set release version
RELEASE_VERSION="$1"

# Changing release version
source ./set_release_version.sh $RELEASE_VERSION

# Automatic upload of the package
source ./upload_pypi_package.sh

# Commining changes to GitHub
git add .
git commit -m "Release: $RELEASE_VERSION"
git push origin master

# Removing dist folder, optional.
rm -rf dist
