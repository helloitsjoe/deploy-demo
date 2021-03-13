#!/bin/bash

github_token=$1
build_dir=$3
target_dir=$4

echo "I am a deploy robot beep boop"
echo "github_token: $github_token"
echo "build_dir: $build_dir"
echo "target_dir: $target_dir"

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@bots.github.com"

yarn
yarn build

rm -rf ${target_dir}
mv ${build_dir}/* ${target_dir}

git add ${target_dir}
git commit -m 'Deploy :rocket:'
git push
