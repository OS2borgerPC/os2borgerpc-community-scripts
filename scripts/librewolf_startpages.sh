#!/bin/bash
set -e

# Check if the script is being run on a kiosk machine

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi

POLICY_FILE="/usr/share/librewolf/distribution/policies.json"

if [ -n "$2" ]; then
    # $2 contains additional URLs separated by "|"
    IFS='|' read -ra EXTRA_URLS <<< "$2"

    jq \
        --arg first "$1" \
        --argjson extra "$(printf '%s\n' "${EXTRA_URLS[@]}" | jq -R . | jq -s .)" \
        '.policies.Homepage.URL = ([$first] + $extra)' \
        "$POLICY_FILE" > "$POLICY_FILE.tmp"
else
    # Only one URL was provided
    jq \
        --arg url "$1" \
        '.policies.Homepage.URL = $url' \
        "$POLICY_FILE" > "$POLICY_FILE.tmp"
fi

mv "$POLICY_FILE.tmp" "$POLICY_FILE"
