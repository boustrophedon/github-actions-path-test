#!/bin/bash

my_tmp_dir="$(mktemp -d --tmpdir mytmpdir.XXXXX)"
echo "before chmod"
ls -ld $my_tmp_dir
chmod o+rx $my_tmp_dir
echo "after chmod"
ls -ld $my_tmp_dir

touch $my_tmp_dir/hello
chmod +x $my_tmp_dir/hello

if [ -n $GITHUB_PATH ]; then
	echo "$GITHUB_PATH"
	echo "$my_tmp_dir" >> $GITHUB_PATH
fi
