#!/bin/bash
# git checkout main;
status=$(awk "/ERC721A Contracts Version/ && NR < 3" ./contracts/ERC721A.sol);

if [[ -z $status ]]
then
    sed -E "2 i // ERC721A Contracts Version v3.1.0" ./contracts/ERC721A.sol | less
else
    sed -E "2s/.*/\/\/ ERC721A Contracts Version v3.1.0/" ./contracts/ERC721A.sol | less
fi