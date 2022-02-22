#!/bin/bash

if [ -n $GITHUB_PATH ]; then
	echo "$GITHUB_PATH"
	echo "hello" >> $GITHUB_PATH
fi
