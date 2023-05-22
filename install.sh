#!/bin/bash
set -o errexit
set -o noglob
set -o nounset
set -o pipefail

# Function to install requirements globally
install_global() {
    cppmon_path="$2"

    echo "Installing python packages globally and moving cppmon to ~/bin"
    if [[ ! -d ~/bin ]]; then
        echo "Creating bin directory"
        mkdir -p ~/bin
    fi

    cp -r "${cppmon_path}" ~/bin/cppmon
    chmod +x ~/bin/cppmon

    pip install -r requirements.tx


    echo "Adding ~/bin to PATH in .bashrc and .zshrc (if they exist)"
    [ -f ~/.bashrc ] && echo "export PATH=\"\$HOME/bin:\$PATH\"" >> ~/.bashrc
    [ -f ~/.zshrc ] && echo "export PATH=\"\$HOME/bin:\$PATH\"" >> ~/.zshrc

    echo "Please run 'source ~/.bashrc' or 'source ~/.zshrc' to apply changes or restart your terminal"
}


# Function to create a virtual environment and install requirements
install_local() {
    echo "Creating virtual environment"
    python3 -m venv venv

    echo "Activating virtual environment"
    source venv/bin/activate

    echo "Installing python packages in virtual environment"
    pip install -r requirements.txt

    echo "Please run 'source venv/bin/activate'"
}

# Check the command line argument
if [ "$1" == "--install-global" ]; then
    install_global "$@"
    elif [ "$1" == "--install-local" ]; then
    install_local
else
    echo "Please provide a valid flag: --install-global or --install-local"
fi

