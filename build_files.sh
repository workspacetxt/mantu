#!/bin/bash

set -e  # Exit immediately if a command fails

# Create and activate a virtual environment with Python 3.9.10
echo "Setting up virtual environment..."
python3.9.10 -m venv myenv
source myenv/bin/activate

# Verify Python version and installed packages
echo "Python version:"
python --version

echo "Installed packages:"
pip list

# Upgrade pip to the latest version
echo "Upgrading pip..."
pip install --upgrade pip

# Install Python dependencies from requirements.txt
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
