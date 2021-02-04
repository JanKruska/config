#!/bin/bash

BASEDIR=$(dirname "$0")
target_dir=~

echo Creating symlinks from "$BASEDIR" to "$target_dir"

#Find hidden files in basedir
#for i in $(find $BASEDIR -type f -path '*/\.*')
for i in $BASEDIR/.*
do
    if [ -f $i ]; then
        #Cut everthing before last /
        i=${i##*/}
        ln -is "$PWD/$BASEDIR/$i" "$target_dir/$i"
        #ln -fs "$ampl_dir/cplex" "$i/cplex"
        #ln -fs "$ampl_dir/libcplex12100.so" "$i/libcplex12100.so"
        echo -e 'Done: \t' "$PWD/$BASEDIR/$i"
    fi
done
 