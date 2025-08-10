#!/bin/bash

set -e

folder=$(pwd)

TARGET_DIR="$folder"
VENV_DIR="$TARGET_DIR/venv"

mkdir -p "$TARGET_DIR"

python3 -m venv "$VENV_DIR"

source "$VENV_DIR/bin/activate"

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing packages..."
pip install jupyter ipykernel numpy pandas matplotlib scikit-learn

NOTEBOOK="$TARGET_DIR//playground.ipynb"
if [[ ! -f "$NOTEBOOK" ]]
then
    echo "Creating empty jupyter notebook"
    cat > "$NOTEBOOK" <<EOF
{
    "cells" : [],
    "metadata" : {},
    "nbformat" : 4,
    "nbformat_minor": 2
}
EOF
else
    echo "Notebook already exists"
fi
pip list >> requirements.txt
code .