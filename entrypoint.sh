#!/bin/bash

echo "======================="

git config user.name "${GITHUB_ACTOR}"
git config user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"

git push --set-upstream origin main


echo "======================="