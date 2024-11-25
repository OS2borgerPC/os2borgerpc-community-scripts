---
title: "Chromium Autostart"
parent: "Kiosk"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/chromium_autostart.sh
parameters:
  - name: "Forsinkelse"
    type: "int"
    default: 0
    mandatory: true
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Bredde"
    type: "int"
    default: null
    mandatory: true
  - name: "Højde"
    type: "int"
    default: null
    mandatory: true
  - name: "Orientation"
    type: "string"
    default: "normal"
    mandatory: true  
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Start Chromium i kiosk-mode og sæt start-URL-en.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Chromium Installer

Chromium Autostart slår automatisk kiosk-tilstand til, men ikke inkognito.

Hvis du benytter skærmtastatur-scriptet og genkører dette script, skal skærmtastatur-scriptet køres igen herefter.

Scriptet kræver en genstart før det tager effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Der angives en forsinkelse før browseren startes, der kan hjælpe med at løse evt. timing issues (som regel virker det fint med 1 sekund, der angives ved tallet 1).

Skærmens højde og bredde skal sættes til skærmens korrekte opløsning.

Desuden skal der angives en orientering, som kan være "left", "right" eller "normal".

