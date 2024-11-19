#!/bin/sh
# ####################################
# install.sh
# Installs the macOS software required
# ####################################

IGNORED_CHARS_RGX='^\s*\(#\|$\)'

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/main/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

echo "Installing all brew formulaes..."
# Install all brew formulaes (in ./brew file)
grep -v $IGNORED_CHARS_RGX ./brew | while read -r line; do
  echo "Installing $line..."
  brew install $line
done

echo "Installing all brew cask formulaes..."
# Install all brew cask formulaes i(n ./cask file)
grep -v $IGNORED_CHARS_RGX ./casl | while read -r line; do
  echo "Installing $line..."
  brew cask install $line
done

# Remove outdated versions from the cellar
brew cleanup

echo "done."
