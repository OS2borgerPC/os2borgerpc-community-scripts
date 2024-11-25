---
title: "Undgå Pauseskærm / Dvale via musemarkørbevægelse"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/suspend-move-mouse-continuously.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Interval (eks.: 10)"
    type: "int"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Hvis man har problemer med at en skærm går i dvale anbefaler vi først at kigge på 
1. Scriptet "Juster skærmdvale" eller 
2. At kigge på hvad der er muligt at indstille direkte på skærmen. 

MEN hvis den derefter stadig går i dvale, kan dette script afprøves.
Scriptet fungerer på den måde, at det bevæger musemarkøren et par pixels efter et interval.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktiver: ja/sandt slår det til nej/falsk slår det fra.
2: Interval: Hvor ofte scriptet skal bevæge musen, angivet i minutter. Maks er 59 minutter.

