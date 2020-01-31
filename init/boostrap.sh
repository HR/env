#!/bin/sh
# #################################
# boostrap.sh
# Boostraps the environment
# #################################

# Make all scripts executable
chmod u+x init/*.sh scripts/*.sh

./install.sh

./link.sh