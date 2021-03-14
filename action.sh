#!/bin/bash

# github_token=$1
# build_dir=$2
# target_dir=$3

echo "I am a deploy robot beep boop"
# echo "github_token: $github_token"
echo "build_dir: $BUILD_DIR"
echo "target_dir: $TARGET_DIR"

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@bots.github.com"

yarn
yarn build

rm -rf ${TARGET_DIR}
mv ${BUILD_DIR} ${TARGET_DIR}

git add ${TARGET_DIR}
git commit -m 'Deploy :rocket:'
git push
