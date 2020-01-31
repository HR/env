#!/bin/bash
# #################################
# Cleans macOS
# #################################

sudo rm -rf ~/.Trash/*
brew update
brew upgrade
brew cleanup
# Ruby
gem cleanup
# Node
npm cache clean --force
# PHP
composer clearcache

# Atom
rm -rf ~/.atom/.apm

# Time Machine
# sudo tmutil disablelocal
# sudo tmutil enablelocal
