#!/bin/bash

# Mac OS X is a bit annoying and will not kill previous instances of flash player

# cd to the script's directory so we can run it from anywhere
cd "$(dirname "$0")"

# Get to the root folder
cd ..

# Kill previous version
killall "Flash Player Debugger"

# Run flash player debug
haxelib run openfl test project.xml flash -debug -Dtest -v "$@"