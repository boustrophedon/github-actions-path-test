#!/bin/bash

echo "path: $PATH"
grep "mytmpdir" <(echo $PATH)

echo "ls output"
ls /tmp/mytmpdir*

echo "which output"
which hello
