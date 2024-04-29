#!/bin/bash

set -e  # Exit immediately if a command fails

# Create and activate a virtual environment
echo "Setting up virtual environment..."
python3 -m venv myenv
source myenv/bin/activate

# Verify Python version and installed packages
echo "Python version:"
python --version

echo "Installed packages:"
pip list

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Verify Django installation
echo "Installed packages after requirements installation:"
pip list

# Run collectstatic without interactive prompt
echo "Running collectstatic..."
python3 manage.py collectstatic --no-input

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
