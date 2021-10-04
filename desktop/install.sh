#!/bin/bash

BASEDIR=$(dirname "$0")
target_dir=~/.local/share/applications/

echo Creating symlinks from "$BASEDIR" to "$target_dir"

#Find hidden files in basedir
#for i in $(find $BASEDIR -type f -path '*/\.*')
for i in "$BASEDIR"/*.desktop
do
    if [ -f "$i" ]; then
        #Cut everthing before last /
        i=${i##*/}
        ln -is "$PWD/$BASEDIR/$i" "$target_dir/$i"
        echo -e 'Done: \t' "$PWD/$BASEDIR/$i"
    fi
done
