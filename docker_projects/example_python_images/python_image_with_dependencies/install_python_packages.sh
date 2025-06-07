#!/bin/bash
# Script is written for Alpine not Ubuntu

# Take in the name of the virtual environment (venv) as the first argument
VENV_NAME="${1:-venv}"

# Take in the directory of venv as the second argument
VENV_DIR="${2:-.}"

# Install python packages inside the virtual environment
"${VENV_DIR}/${VENV_NAME}/bin/pip" install --no-cache-dir numpy scipy scikit-learn
