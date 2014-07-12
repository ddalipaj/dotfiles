#!/bin/bash

for FILE in bash_profile pryrc tm_properties gitconfig irbrc my.cnf rmate.rc
do
  rm -f "$HOME/.$FILE"
  ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
  echo
done

source ~/.bash_profile