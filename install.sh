#!/usr/bin/env bash

#!/bin/bash

# Function to install requirements globally
install_global() {
    echo "Installing python packages globally"
    pip install -r requirements.txt
}

# Function to create a virtual environment and install requirements
install_local() {
    echo "Creating virtual environment"
    python3 -m venv venv

    echo "Activating virtual environment"
    export source venv/bin/activate

    echo "Installing python packages in virtual environment"
    pip install -r requirements.txt
}

# Check the command line argument
if [ "$1" == "--install-global" ]; then
    install_global
elif [ "$1" == "--install-local" ]; then
    install_local
else
    echo "Please provide a valid flag: --install-global or --install-local"
fi

