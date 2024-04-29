#!/bin/bash

# Create and activate a virtual environment
echo "Setting up virtual environment..."
python3 -m venv myenv
source myenv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Run collectstatic without interactive prompt
echo "Running collectstatic..."
python3.9 manage.py collectstatic --no-input

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
