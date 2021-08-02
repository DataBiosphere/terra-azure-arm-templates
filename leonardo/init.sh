#!/bin/bash
# pip install terra-notebook-utils

# Assume the managed identity to get proper permission
az login --identity

# Download certs from azure storage
jupyter lab  --autoreload --NotebookApp.token='' --NotebookApp.password='' 
