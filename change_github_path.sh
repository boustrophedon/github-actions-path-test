#!/bin/bash

my_tmp_dir="$(mktemp -d --tmpdir mytmpdir.XXXXX)"
touch $my_tmp_dir/hello
chmod +x $my_tmp_dir/hello

if [ -n $GITHUB_PATH ]; then
	echo "$GITHUB_PATH"
	echo "$my_tmp_dir" >> $GITHUB_PATH
fi
