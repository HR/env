#!/bin/sh
# #################################
# link.sh
# Symlinks all dotfiles in repo in
# $HOME path
# #################################
for file in $( find .. -name ".*" -type f -exec basename {} \; ); do
  SRC_PATH=$(dirname $PWD)/$file
  LINK_PATH=$HOME/$file
	ln -sv "$SRC_PATH" "$LINK_PATH"
done

echo "done."