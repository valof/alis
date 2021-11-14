#!/usr/bin/env bash
set -e

mv deploy/ deploy-backup/
mkdir deploy/

cd deploy/
git init -b gh-pages
git remote add origin git@github.com:valof/alis.git
git config --local user.email "valof@hotmail.com"
git config --local user.name "valof"
git config --local pull.ff only
git checkout -b gh-pages
cd ..

hugo --destination="deploy"

cd deploy/
git add -A
git commit -m "Site reset at `LC_ALL=en_US.utf8 date +%Y-%m-%dT%H:%M:%S%z`"
git push --force origin gh-pages
cd ..
