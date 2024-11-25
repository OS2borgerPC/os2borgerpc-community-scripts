---
title: "Chromium med onboard-tastatur"
parent: "Kiosk"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/wm_keyboard_install.sh
parameters:
  - name: "Tilføj skærmtastatur?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Sætter billedet op, så det er delt mellem browseren og et virtuelt tastatur.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Chromium Installer
- Chromium Autostart

Hvis du oplever, det ikke virker, så genkør scriptet "OS2borgerPC Kiosk - Autostart Chromium", efterfulgt af dette.

Dette script tager først effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tilføj skærmtastatur?:
   Sæt hak: Installerer og slår skærmtastaturet til
   Lad stå tom: Slår skærmtastatur fra (standard)

