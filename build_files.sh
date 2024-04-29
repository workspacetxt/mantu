#!/bin/bash

set -e  # Exit immediately if a command fails

# Create and activate a virtual environment
echo "Setting up virtual environment..."
python3 -m venv myenv
source myenv/bin/activate

# Verify Python version and installed packages
echo "Python version:"
python3 --version

echo "Installed packages:"
pip list

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Verify installed packages after requirements installation
echo "Installed packages after requirements installation:"
pip list

# Run collectstatic without interactive prompt
echo "Running collectstatic..."
python manage.py collectstatic --no-input

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
