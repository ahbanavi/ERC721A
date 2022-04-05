#!/bin/bash
shopt -s globstar
# git checkout main;

version_str="ERC721A Contracts Version";
new_version=$1;
for file in contracts/**/*.sol; do
    line=$(sed -n 2p $file);
    if [[ $line == *"$version_str"* ]]
    then
        sed -i "2s/.*/\/\/ $version_str v$new_version/" $file
    else
        sed -i "2 i // $version_str v$new_version" $file
    fi
done