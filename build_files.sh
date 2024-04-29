#!/bin/bash

set -e  # Exit immediately if a command fails

# Upgrade pip to the latest version
echo "Upgrading pip..."
/vercel/path0/myenv/bin/python3.9 -m pip install --upgrade pip

# Create and activate a virtual environment
echo "Setting up virtual environment..."
/vercel/path0/myenv/bin/python3.9 -m venv myenv
source myenv/bin/activate

# Install Python dependencies from Pipfile
echo "Installing Python dependencies..."
/vercel/path0/myenv/bin/python3.9 -m pip install pipenv
/vercel/path0/myenv/bin/pipenv install --skip-lock --sequential --dev

# Run collectstatic without interactive prompt
echo "Running collectstatic..."
/vercel/path0/myenv/bin/python3.9 manage.py collectstatic --no-input

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
