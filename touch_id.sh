#!/usr/bin/env bash

PAM_FILE="/etc/pam.d/sudo"
LINE="auth       sufficient     pam_tid.so"

# Ensure the file exists
if [ ! -f "$PAM_FILE" ]; then
    echo "Error: $PAM_FILE not found."
    exit 1
fi

# Add the line only if it’s not already there
if ! grep -Fxq "$LINE" "$PAM_FILE"; then
    echo "Adding Touch ID authentication line to $PAM_FILE"
    echo "$LINE" | sudo tee -a "$PAM_FILE" >/dev/null
else
    echo "Touch ID authentication line already present."
fi
