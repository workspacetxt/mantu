#!/bin/bash

# Create and activate a virtual environment
echo "Setting up virtual environment..."
python3 -m venv myenv
source myenv/bin/activate

# Install dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Run collectstatic
echo "Running collectstatic..."
python manage.py collectstatic

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
