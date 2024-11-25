---
title: "Chromium - Skift startside"
parent: "Kiosk"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/chromium_change_homepage.sh
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Skifter startside i Chromium.

Hvis du oplever scriptet fejle, genkør da OS2borgerPC Kiosk - Autostart Chromium før dette.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Hvilken URL der skal være den nye startside.

