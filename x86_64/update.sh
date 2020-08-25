#!/bin/bash

repo-add -n -R engine_repo.db.tar.gz *.pkg.tar.xz
repo-add -n -R engine_repo.db.tar.gz *.pkg.tar.zst

rm engine_repo.db
cp -f engine_repo.db.tar.gz engine_repo.db
##optional-remove for old repo.db##
rm *gz.old

echo "Repository is Up-To-Date"
