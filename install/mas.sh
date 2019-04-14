#!/usr/bin/env bash

# Automatically install all mac apps that I need from the Mac App Store

if [ "$(mas account | grep -c "Not signed in")" -gt 0 ]; then
        echo "Not signed in. Please sign in manually."
        mas open
        fail
else
        echo "Great! You're signed in to the Mac App Store"
fi

# Mac App Store apps to install
apps=(
)
