#! /bin/bash

git status
git add .
time=$(perl -E '$t = localtime; say $t')
git commit -m "Auto commit: $time"
git push origin master
