#!/bin/sh
# #################################
# link.sh
# Symlinks all dotfiles in repo in
# $HOME path
# #################################
for file in $( ls -A ../ | grep -vE 'scripts$|\.git$|\.gitignore|.*.md' ); do
	ln -sv "$PWD/$file" "$HOME"
  echo "Symlinked $PWD/$file -> $HOME/$file"
done

echo "done."