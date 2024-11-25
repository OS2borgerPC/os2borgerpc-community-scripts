---
title: "Autostart program"
parent: "System"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc/autostart_program.sh
parameters:
  - name: "Programmets navn"
    type: "string"
    default: null
    mandatory: true
  - name: "Slå autostart til"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Starter et givent program hver gang en borger logger på. 
For at få en liste over mulige programmer på en maskine kan man køre scriptet "Desktop - Vis programliste" med parametren sat til "mulige"

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Navnet på det program der skal starte. Navnet ser forskel på store og små bogstaver (da nogle programmer har store bogstaver i deres navn). Kan udfyldes med eller uden filforlængelsen, f. eks. "firefox" eller "firefox.desktop". For at autostarte Chrome skrives "google-chrome".

2. Et afkrydsningsfelt der, hvis der er sat hak i det, tilføjer et program til autostart. Hvis afkrydsningsfeltet er tomt, slettes programmet fra autostart igen.

