#!/bin/bash

# This script changes the password for a specified user account on macOS.

# Function to check if the script is executed with root privileges
check_root() {
    if [[ "$(id -u)" != "0" ]]; then
        printf "This script must be run as root\n" >&2
        return 1
    fi
}

# Function to change the password for the admin user
change_admin_password() {
    local username="$1"  # Username is now a parameter to the function
    local old_password="$2"
    local new_password="$3"

    if id "$username" &>/dev/null; then
        printf "Changing password for user: %s\n" "$username"
        # Using dscl to change the password, requires old password
        if dscl -u "/Users/$username" -P "$old_password" . -passwd "/Users/$username" "$new_password"; then
            printf "Password for user %s changed successfully.\n" "$username"
        else
            printf "Failed to change password for user %s. Please check your old password or user permissions.\n" "$username" >&2
            return 1
        fi
    else
        printf "User %s does not exist\n" "$username" >&2
        return 1
    fi
}

main() {
    local username="diceadmin"  # Specify the username whose password needs to be changed
    local old_password="oldpassword"  # Specify the current password
    local new_password="new_secure_password123"  # Specify the new password

    if ! check_root; then
        return 1
    fi

    change_admin_password "$username" "$old_password" "$new_password"
}

main
