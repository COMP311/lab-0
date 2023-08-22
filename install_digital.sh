#!/bin/bash

wget https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
# unzip is installed by default on macOS and Ubuntu
# If you're not using either of these two OS's and you got an error here, please install unzip on your platform
# Or decompress Digital.zip manually in your GUI and remove the following line
unzip Digital.zip
rm Digital.zip
PATH_TO_DIGITAL_JAR=$PWD/Digital/Digital.jar

# Determine shell
# If user $SHELL is zsh, then $SHELL will be zsh even though there is a bash shebang on line 1
if [[ "$SHELL" == *"bash"* ]]; then
    SHELL_INIT_RUN_COMMAND_FILE=$HOME/.bashrc
elif [[ "$SHELL" == *"zsh"* ]]; then
    SHELL_INIT_RUN_COMMAND_FILE=$HOME/.zshrc
else
    echo "Your default $SHELL is not bash or zsh. I do not know what your shell's equivalent to $HOME/.bashrc or $HOME/.zshrc is.
    To support an aliased digital command, please modify SHELL_INIT_RUN_COMMAND_FILE to your shell's equivalent and re-run this script.
    Otherwise, Digital has already been downloaded and you can run Digital.sh."
    exit 1
fi

# Alias the startup command to "digital" so user can easily run from any directory
echo "alias digital=\"java -jar $PATH_TO_DIGITAL_JAR\"" >> "$SHELL_INIT_RUN_COMMAND_FILE"
