---
title: "Browser: Vælg standardbrowser"
parent: "Browser"
source: scripts/browser_menu_shortcut_replace.sh
parameters:
- name: "Browser"
  type: "text_field"
  default: firefox,librewolf,google-chrome,chromium
  mandatory: false
compatibility:
  - "BorgerPC"
---

**## Beskrivelse**
Vælg hvilken browser der skal vises som genvej i programmenuen.
Husk at browseren skal være installeret, for at kunne fremvises i menu'en.

Der modtages 1 parameter:

  1. Browser:
    Vælg hvilken browser der skal bruges som genvej.
    Muligheder:
      `firefox` vælger Firefox.
      `librewolf` vælger LibreWolf.
      `google-chrome` vælger Google Chrome.
      `chromium` vælger Chromium.

Browsere som bliver automatisk erstattet:
  'firefox',
  'firefox_firefox',
  'librewolf',
  'google-chrome',
  'chromium', 
  'chromium_chromium',
  'microsoft-edge'

Listen bruges til at kunne skelne mellem browsere, og andre programmer.
Hvis der findes en browser udenfor denne liste, bliver den ikke erstattet.

Hvis der i forvejen findes flere forskellige browser ikoner, bliver alle erstattet til den valgte, og dubletter bliver automatisk fjernet.