#!/bin/bash
set -e

# Check if the script is being run on a kiosk machine

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi

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

# 2. Set up LibreWolf policies

POLICY_DIR="/usr/share/librewolf/distribution"
POLICY_FILE="$POLICY_DIR/policies.json"

# Create the policy directory if it doesn't already exist
mkdir -p "$POLICY_DIR"

# Write LibreWolf policies
cat > "$POLICY_FILE" <<'EOF'
{
  "policies": {
    "Homepage": {
      "URL": "https://www.borger.dk/",
      "Locked": true,
      "StartPage": "homepage"
    },

    "Preferences": {
      "browser.tabs.inTitlebar": {
        "Value": 0,
        "Status": "locked"
      },
      "privacy.spoof_english": {
        "Value": 2,
        "Status": "locked"
      }
    },

    "PrivateBrowsingModeAvailability": 2,

    "DisplayBookmarksToolbar": "always",
    "NoDefaultBookmarks": true,

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