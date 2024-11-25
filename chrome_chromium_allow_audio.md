---
title: "Lyd: Tillad autostart"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_chromium_allow_audio.sh
summary: "Tillader autostart af lyd for 1-3 URL'er."
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "URL 1"
    type: "string"
    default: null
    mandatory: true
  - name: "URL 2 (valgfri)"
    type: "string"
    default: null
    mandatory: false
  - name: "URL 3 (valgfri)"
    type: "string"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Normalt vil aktivering af lyd ellers kræve brugerinteraktion på de fleste sider, såsom at der trykkes på en knap før afspilningning starter.

Et eksempel på brug er hvis BorgerPC'en bruges til at modtage beskeder fra Frontdesk.
