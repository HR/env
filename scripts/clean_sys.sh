#!/bin/bash
# #################################
# Cleans macOS
# #################################

sudo rm -rf ~/.Trash/*
brew update
arch -arm64 brew upgrade
brew cleanup
# Ruby
gem cleanup
# Node
npm cache clean --force
yarn cache clean
# Python
pip3 cache purge
# macOS
# sudo rm -rf /Library/Caches/*

# Time Machine
# sudo tmutil disablelocal
# sudo tmutil enablelocal
