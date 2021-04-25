#!/bin/bash

while read line
do
  # echo `code --uninstall-extension $line`
  echo `code --install-extension $line`
done < ext.txt