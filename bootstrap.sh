#!/bin/bash

for FILE in bash_profile pryrc tm_properties gitconfig irbrc my.cnf rmate.rc atom
do
  rm -Rf "$HOME/.$FILE"
  ln -s "$(pwd)/$FILE" "$HOME/.$FILE"
  echo
done

source ~/.bash_profile
