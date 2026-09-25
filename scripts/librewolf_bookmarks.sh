#!/bin/bash
set -e

# Check if the script is being run on a kiosk machine

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi

POLICY_FILE="/usr/share/librewolf/distribution/policies.json"

echo "Old bookmarks:"
jq '.policies.Bookmarks' "$POLICY_FILE"

if [ -n "$1" ]; then
    # $1 contains URLs separated by "|"
    IFS='|' read -ra URLS <<< "$1"

    # Only show the toolbar when bookmarks are placed in it
    if [ "$2" = "toolbar" ]; then
        TOOLBAR="always"
    else
        TOOLBAR="never"
    fi

    jq \
        --arg placement "$2" \
        --arg toolbar "$TOOLBAR" \
        --argjson urls "$(printf '%s\n' "${URLS[@]}" | jq -R . | jq -s .)" \
        '.policies.Bookmarks = ($urls | map({
            Title: (split("/")[2]),
            URL: .,
            Placement: $placement
        }))
        | .policies.DisplayBookmarksToolbar = $toolbar' \
        "$POLICY_FILE" > "$POLICY_FILE.tmp"
else
    # No bookmarks means no toolbar
    jq \
        '.policies.Bookmarks = []
        | .policies.DisplayBookmarksToolbar = "never"' \
        "$POLICY_FILE" > "$POLICY_FILE.tmp"
fi

mv "$POLICY_FILE.tmp" "$POLICY_FILE"

echo "New bookmarks:"
jq '.policies.Bookmarks' "$POLICY_FILE"

echo "Bookmarks toolbar:"
jq '.policies.DisplayBookmarksToolbar' "$POLICY_FILE"