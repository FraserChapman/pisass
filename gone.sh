#!/usr/bin/env bash

set -e

if command -v sass &> /dev/null; then
    sudo rm -rf /usr/local/dart-sass/
    sed -i '/\/usr\/local\/dart-sass:/d' ~/.profile
    export PATH=$(echo $PATH | sed 's|:/usr/local/dart-sass||')

    echo "Sass removed successfully."
    echo "Update your shell environment by running 'source ~/.profile'"
else
    echo "Sass is not installed. Nothing to remove."
fi
