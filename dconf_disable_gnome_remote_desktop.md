---
title: "Bloker for GNOME Remote Desktop (Fjernskrivebord)"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/dconf_disable_gnome_remote_desktop.sh
parameters:
  - name: "Blokér for GNOME Remote Desktop?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script blokerer for GNOME Remote Desktop.
Inden kørsel af dette script, kan GNOME Remote Desktop aktiveres, hvis Indstillinger ikke er blokeret. 
Indstillinger er dog blokeret for Borger i alle OS2borgerPC images siden 3.1.0.

Scriptet er ikke relevant for OS2borgerPC Kiosk.