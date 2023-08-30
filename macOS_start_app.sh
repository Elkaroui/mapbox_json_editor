#!/bin/bash

# Check if Python is installed
if ! command -v python &> /dev/null; then
    echo "Python is not installed."
    # Download Python installer (adjust URL as needed)
    curl -o python_installer.pkg https://www.python.org/ftp/python/3.11.5/python-3.11.5-macos11.pkg
    echo "Installing Python..."
    sudo installer -pkg python_installer.pkg -target /
    echo "Python has been installed."
    rm python_installer.pkg
else
    echo "Python is already installed."
fi

# Run the Python server
python -m http.server 8000 &

# Open the browser
open http://localhost:8000/
