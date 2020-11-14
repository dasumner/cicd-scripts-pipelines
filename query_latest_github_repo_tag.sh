#!/bin/bash

latest=`curl --silent "https://api.github.com/repos/$1/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'`
echo $latest
