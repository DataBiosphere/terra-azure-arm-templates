#!/bin/bash
pip install terra-notebook-utils

# Assume the managed identity to get proper permission
az login --identity

# Download certs from azure storage