#!/bin/bash

# Example of automatic version change for the Project,
# Some pretty weird CI/CD automation stuff.

# First parameter is the new version.
SET_VERSION="$1"

# Changing version in setup.py.
echo "Changing version setup.py..."
SETUP_PY_VERSION=$(cat setup.py | grep "version = " | head -1)
echo "Current version : \"$SETUP_PY_VERSION\""
NEW_VERSION="    version = '$SET_VERSION',"
echo "New version     : \"$NEW_VERSION\""
sed -i "s/$SETUP_PY_VERSION/$NEW_VERSION/" setup.py
echo ""

# Changing version in module"
echo "Changing version in JKvYtgproPythonTest Module"
# Changing first occurrence of __version__
MODULE_PY_VERSION=$(cat JKvYtgproPythonTest/python_release_test.py | grep "__version__" | head -1)
echo "Old module version: \"$MODULE_PY_VERSION\""
MODULE_NEW_VERSION="__version__ = \"$SET_VERSION\""
echo "New module version: \"$MODULE_NEW_VERSION\""
sed -i "s/$MODULE_PY_VERSION/$MODULE_NEW_VERSION/" JKvYtgproPythonTest/python_release_test.py
echo ""
