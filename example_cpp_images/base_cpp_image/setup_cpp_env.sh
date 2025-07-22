#!/bin/bash
# Script is written for Alpine not Ubuntu

# Take in the name of the virtual environment (venv) as the first argument
VENV_NAME="${1:-venv}"

# Take in the directory of venv as the second argument
VENV_DIR="${2:-.}"

# Install build tools (compilers, etc...), Python and Pip
apk add --no-cache build-base=0.5-r3 pkgconf=2.3.0-r0 python3=3.12.10-r0 py3-pip=24.3.1-r0 python3-dev=3.12.10-r0

# Create the virtual python environment
python3 -m "${VENV_NAME}" "${VENV_DIR}/${VENV_NAME}"
