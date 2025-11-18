#!/bin/bash

ADMIN_URL=$1
SITE=$2
BEARER_TOKEN=$3

if [ "$(id -u)" != "0" ]; then
    echo "This program must be run as root"
    exit 1
fi

# Stop unattended-upgrades.service, as it might block installation of git
systemctl stop unattended-upgrades.service

# Required for pip install from a git repo
apt install git jq -y 

# Force install client version from github, set this as fallback default as well
DEFAULT_OS2BORGERPC_CLIENT=https://github.com/OS2borgerPC/os2borgerpc-client.git
set_os2borgerpc_config os2borgerpc_client_package "$DEFAULT_OS2BORGERPC_CLIENT"

pip install --force-reinstall "git+$DEFAULT_OS2BORGERPC_CLIENT@2.5.0"

ORIGINAL_SITE=$(get_os2borgerpc_config "site")
ORIGINAL_ADMIN_URL=$(get_os2borgerpc_config "admin_url")

if [ -n "$SITE" ]; then
    set_os2borgerpc_config site "$SITE"
fi

if [ -n "$ADMIN_URL" ]; then
    set_os2borgerpc_config admin_url "$ADMIN_URL"
fi

# Extract UID from the config file to locate current name through API
CONFIG_FILE="/etc/os2borgerpc/os2borgerpc.conf"
PC_UID=$(grep '^uid:' "$CONFIG_FILE" | cut -d ':' -f2 | xargs)

# Perform the curl request and extract the name using hostname as backup
COMPUTER_NAME=$(get_os2borgerpc_config "hostname")
if [ -n "$PC_UID" ]; then
  NAME=$(curl -s -X 'GET' \
    "$ORIGINAL_ADMIN_URL/api/system/computers" \
    -H "accept: application/json" \
    -H "Authorization: Bearer $BEARER_TOKEN" | \
    jq -r --arg uid "$PC_UID" '.[] | select(.uid == $uid) | .name')

  if [ -n "$NAME" ]; then
    echo "Computer name: $NAME"
    COMPUTER_NAME=$NAME
  else
    echo "No computer found with UID: $PC_UID"
  fi
else
  echo "UID not found in $CONFIG_FILE"
fi


# Try to register pc on new admin-site
if ! os2borgerpc_register_in_admin $COMPUTER_NAME; then

    set_os2borgerpc_config site "$ORIGINAL_SITE"
    set_os2borgerpc_config admin_url "$ORIGINAL_ADMIN_URL"

    echo "Registration failed"
    exit 1
fi