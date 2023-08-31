#!/bin/bash

# Create the bin directory in the user's home if it doesn't exist
mkdir -p $HOME/bin

# Check if the PATH update already exists in ~/.profile
grep -qxF 'export PATH=$HOME/bin:$PATH' $HOME/.profile

# $? is a special variable that holds the exit status of the last command executed
# grep will return 0 if the line is found, and 1 otherwise

if [ $? -ne 0 ]; then
    # Append the export statement to ~/.profile if it doesn't exist
    echo "export PATH=$HOME/bin:$PATH" >> $HOME/.profile
    echo "PATH updated in ~/.profile."
else
    echo "PATH already updated in ~/.profile."
fi

# Source ~/.profile to reflect changes immediately in the current shell
source $HOME/.profile
echo "Current shell PATH updated."
