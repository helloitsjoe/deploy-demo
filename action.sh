#!/bin/bash

github_token=$1
project_dir=$2
build_dir=$3
target_dir=${4:-GITHUB_WORKSPACE}

echo "I am a deploy robot beep boop"
echo "github_token: $1"
echo "project_dir: $2"
echo "build_dir: $3"
echo "target_dir: $4"
