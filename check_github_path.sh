#!/bin/bash

echo "$PATH"
grep "hello" <(echo $PATH)
