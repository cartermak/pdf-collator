#!/bin/bash

# Check if Python 3 is installed
PY_INSTALLED=$(python3 --version|grep "Python 3.*")

# If not installed, install latest version
if [ "" == "$PY_INSTALLED" ]; then
    echo "Python 3 not found; installing Python 3.6..."
    sudo apt-get --force-yes --yes install python3.6
else
    echo "Python found."
fi

# Check if pip is installed
PIP_INSTALLED=$(dpkg-query -W --showformat='${Status}\n' python-pip|grep "install ok installed")

# If not installed, install latest version
if [ "" == "$PIP_INSTALLED" ]; then
    echo "pip not found; installing pip..."
    sudo apt-get --force-yes --yes install python-pip
else
    echo "Pip found."
fi


# Check if PyPDF2 is installed
PDF_INSTALLED=$(pip list --format columns|grep "PyPDF2")

# If not installed, install latest version
if [ "" == "$PDF_INSTALLED" ]; then
    echo "PyPDF2 not found; installing PyPDF2..."
    pip install pypdf2
else
    echo "PyPDF2 found."
fi

echo "Setup complete."