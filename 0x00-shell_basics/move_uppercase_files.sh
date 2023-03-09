#!/bin/bash

# Create the /tmp/u directory if it doesn't exist
mkdir -p /tmp/u

# Move all files beginning with an uppercase letter to /tmp/u
mv [A-Z]* /tmp/u
