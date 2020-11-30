#!/bin/bash

files=$PWD/*.desktop
desktop_dir=~/.local/share/applications/

echo Copying desktop configurations to "$desktop_dir"

for i in $files
do
    if test -f "$i" 
    then
       cp "$i" "$desktop_dir"
       echo -e 'Done: \t' "$i"
    fi
done
