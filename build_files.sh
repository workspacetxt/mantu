#!/bin/bash

# Path to your Python interpreter (adjust as needed)
PYTHON="python3.9"

# Path to your Django project directory
DJANGO_PROJECT_DIR="dsiplay"

# Path to your requirements.txt file
REQUIREMENTS_FILE="requirements.txt"

# Create and activate a virtual environment
echo "Setting up virtual environment..."
$PYTHON -m venv myenv
source myenv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r $REQUIREMENTS_FILE

# Navigate to the Django project directory
cd $DJANGO_PROJECT_DIR

# Run collectstatic without interactive prompt
echo "Running collectstatic..."
$PYTHON manage.py collectstatic --no-input

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed."
