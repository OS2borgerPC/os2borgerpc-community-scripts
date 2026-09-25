#!/bin/bash
set -e

# Check if the script is being run on a kiosk machine

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi

# set argument ($1) (True/False) to lowercase for use as variable in policies.json and librewolf.overrides.cfg
DRM_ENABLED="${1,,}"

# 1. Install LibreWolf 

if ! command -v extrepo >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y extrepo
fi

sudo extrepo enable librewolf

if command -v librewolf >/dev/null 2>&1; then
    echo "$(librewolf --version) already installed."
else
    sudo extrepo update librewolf
    sudo apt update
    sudo apt install -y librewolf
fi


# 2. Set up LibreWolf custom preferences

LIBREWOLF_OVERRIDES="/home/.skjult/.config/librewolf/librewolf/librewolf.overrides.cfg"

# Create the LibreWolf configuration directory
mkdir -p "$(dirname "$LIBREWOLF_OVERRIDES")"

# Write our custom LibreWolf preferences

if [ "$DRM_ENABLED" = "true" ]; then
    DRM_PERMISSION=1
else
    DRM_PERMISSION=2
fi

cat > "$LIBREWOLF_OVERRIDES" <<EOF
// Custom settings for the library installation

// Use normal website language detection
pref("privacy.spoof_english", 1);

// DRM
pref("media.eme.enabled", $DRM_ENABLED);
pref("media.gmp-manager.updateEnabled", $DRM_ENABLED);
pref("media.gmp-widevinecdm.enabled", $DRM_ENABLED);
pref("media.gmp-widevinecdm.autoupdate", $DRM_ENABLED);
pref("permissions.default.media-key-system-access", $DRM_PERMISSION);
EOF

echo "LibreWolf custom preferences written to $LIBREWOLF_OVERRIDES"


# 3. Set up LibreWolf policies

POLICY_DIR="/usr/share/librewolf/distribution"
POLICY_FILE="$POLICY_DIR/policies.json"

# Create the policy directory if it doesn't already exist
mkdir -p "$POLICY_DIR"

# Write LibreWolf policies
cat > "$POLICY_FILE" <<EOF
{
  "policies": {
    "Homepage": {
      "URL": "https://www.borger.dk/",
      "Locked": true,
      "StartPage": "homepage"
    },

    "PrivateBrowsingModeAvailability": 2,

    "EncryptedMediaExtensions": {
      "Enabled": $DRM_ENABLED,
      "Locked": true
    },

    "NoDefaultBookmarks": true,
    "DisplayBookmarksToolbar": "never",

    "DisableAccounts": true,
    "DisableFirefoxScreenshots": true,
    "DisableFirefoxStudies": true,
    "DisableTelemetry": true,

    "DisableProfileRefresh": true,
    "DisableSafeMode": true,
    "DisableDeveloperTools": true,

    "BlockAboutAddons": true,
    "BlockAboutConfig": true,
    "BlockAboutProfiles": true,
    "BlockAboutSupport": true,

    "BrowserDataBackup": {
      "AllowBackup": false,
      "AllowRestore": false
    },

    "PasswordManagerEnabled": false,
    "OfferToSaveLogins": false,
    "AutofillAddressEnabled": false,
    "AutofillCreditCardEnabled": false,

    "DisableFormHistory": true,

    "Cookies": {
      "Behavior": "reject",
      "Locked": true
    },

    "SanitizeOnShutdown": {
      "Cache": true,
      "Cookies": true,
      "FormData": true,
      "History": true,
      "Sessions": true,
      "SiteSettings": true,
      "OfflineApps": true,
      "Locked": true
    },

    "FirefoxHome": {
      "Search": true,
      "TopSites": false,
      "SponsoredTopSites": false,
      "Highlights": false,
      "Pocket": false,
      "SponsoredPocket": false,
      "Snippets": false,
      "SponsoredStories": false,
      "Weather": false,
      "Locked": true
    },

    "DisableSetDesktopBackground": true,

    "SkipTermsOfUse": true,

    "DisableProfileImport": true,

    "ShowHomeButton": false,

    "SearchSuggestEnabled": false,

    "DisableForgetButton": true,

    "DontCheckDefaultBrowser": true,
    "DefaultBrowserSettingEnabled": false,

    "OverrideFirstRunPage": "",
    "OverridePostUpdatePage": "",

    "TranslateEnabled": false,

    "EnableTrackingProtection": {
      "Value": true,
      "Locked": true,
      "Cryptomining": true,
      "Fingerprinting": true,
      "EmailTracking": true,
      "SuspectedFingerprinting": true,
      "Category": "strict",
      "BaselineExceptions": true,
      "ConvenienceExceptions": true
    },

    "ExtensionSettings": {
      "*": {
        "installation_mode": "blocked"
      }
    }
  }
}
EOF

echo "LibreWolf policies written to $POLICY_FILE"