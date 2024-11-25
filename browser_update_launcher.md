---
title: "Udskift browser-genvejen i venstremenuen med en valgfri browser"
parent: "Browser"
source: os2borgerpc-scripts/os2borgerpc/browser/browser_update_launcher.sh
summary: "Udskifter browser-knappen i venstremenuen (der som standard er Firefox) med en valgfri browser."
parameters:
  - name: "Udskift browseren i venstremenuen med følgende browser (se muligheder i beskrivelse)"
    type: "text_field"
    default: "firefox,google-chrome,microsoft-edge"
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Valgmulighederne er:
- firefox
- google-chrome
- microsoft-edge

Dette script er blevet testet og virker på Ubuntu 22.04.