#!/usr/bin/env bash
set -e

# abort if script is run on a kiosk machine
if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi


#== set variables ==#

# target file
DCONF_POLICY="/etc/dconf/db/os2borgerpc.d/02-launcher-favorites"

# core script argument
TARGET_BROWSER=$1
echo "Chosen browser: $TARGET_BROWSER"

# browser entries that can be replaced in the favorites menu
# list contains both snap and apt package names, where available.
BROWSER_PATTERN="chromium_chromium|chromium|firefox_firefox|firefox|google-chrome|librewolf|microsoft-edge"

#== main script ==#

# rename target browser if its installed as a snap package
if [ -d "/snap/$TARGET_BROWSER" ]; then
  TARGET_BROWSER="${TARGET_BROWSER}_$TARGET_BROWSER"
fi

# replace all browser entries with target browser
sed --in-place --regexp-extended \
  --expression "s/$BROWSER_PATTERN/$TARGET_BROWSER/g" \
  "$DCONF_POLICY"

# remove duplicate favorites
awk '
/^favorite-apps=/ {
    prefix = "favorite-apps=["
    apps = substr($0, length(prefix) + 1, length($0) - length(prefix) - 1)

    n = split(apps, entries, ", ")
    result = ""

    for (i = 1; i <= n; i++) {
        if (!seen[entries[i]]++) {
            result = result (result ? ", " : "") entries[i]
        }
    }

    print prefix result "]"
    next
}
{ print }
' "$DCONF_POLICY" > "$DCONF_POLICY.tmp"

mv "$DCONF_POLICY.tmp" "$DCONF_POLICY"

# update dconf
dconf update