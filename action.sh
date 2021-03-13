#!/bin/bash

github_token=$1
project_dir=${2:-GITHUB_WORKSPACE}
build_dir=$3
target_dir=$4

echo "I am a deploy robot beep boop"
echo "github_token: $github_token"
echo "project_dir: $project_dir"
echo "build_dir: $build_dir"
echo "target_dir: $target_dir"

cd ${GITHUB_WORKSPACE}

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@bots.github.com"

cd ${project_dir}

yarn
yarn build

cd ${GITHUB_WORKSPACE}

mv ${build_dir} ${target_dir}

git add ${target_dir}
git commit -m 'Deploy :rocket:'
git push
