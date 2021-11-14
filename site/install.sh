#!/usr/bin/env bash
git clone -b master git@github.com:valof/alis.git
cd alis
git config --local user.email "valof@hotmail.com"
git config --local user.name "valof"

git clone -b gh-pages git@github.com:valof/alis.git deploy/
cd deploy
git config --local user.email "valof@hotmail.com"
git config --local user.name "valof"

