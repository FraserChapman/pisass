#!/usr/bin/env bash

set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 <sass_version>"
    echo "See https://github.com/sass/dart-sass/releases for available versions"
    exit 1
fi

SASS_VERSION=$1
SASS_GZ="dart-sass-$SASS_VERSION-linux-arm64.tar.gz"
SASS_URL="https://github.com/sass/dart-sass/releases/download/$SASS_VERSION/$SASS_GZ"

curl -4 -L -o $SASS_GZ $SASS_URL
tar -xvf $SASS_GZ
sudo mv dart-sass /usr/local

# Add Dart Sass to the PATH
echo 'export PATH=/usr/local/dart-sass:$PATH' >> ~/.profile

# soruce
export PATH=/usr/local/dart-sass:$PATH

# Cleanup
rm $SASS_GZ

# Check Sass
if command -v sass &> /dev/null; then
    installed_version=$(sass --version)
    if [ "$installed_version" = "$SASS_VERSION" ]; then
        echo "Sass $SASS_VERSION installed successfully."
    else
        echo "Failed to install Sass $SASS_VERSION. Installed version: $installed_version"
        exit 1
    fi
else
    echo "Failed to verify Sass installation. Please check manually."
    exit 1
fi
