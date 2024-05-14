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
    local username="diceadmin"  # Username set to 'diceadmin'
    local new_password="$1"

    if id "$username" &>/dev/null; then
        printf "Changing password for admin user: %s\n" "$username"
        if dscl . -passwd /Users/"$username" "$new_password"; then
            printf "Password for admin user %s changed successfully.\n" "$username"
        else
            printf "Failed to change password for admin user %s.\n" "$username" >&2
            return 1
        fi
    else
        printf "Admin user %s does not exist\n" "$username" >&2
        return 1
    fi
}

main() {
    local new_password="new_secure_password123"  # Change this to the desired new password

    if ! check_root; then
        return 1
    fi

    change_admin_password "$new_password"
}

main
