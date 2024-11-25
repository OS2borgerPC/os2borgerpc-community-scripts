---
title: "Kopier genvej til autostart"
parent: "Desktop"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/copy_shortcut_to_autostart.sh
parameters:
  - name: "Navn på genvej (uden .desktop) der skal kopieres til autostart"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Kopierer en genvej til autostart-mappen, så det givne program starter automatisk.

Det kan bl.a. bruges til at få Chrome/Chromium til at åbne en given startside, selvom Inkognito eller gæstetilstand er slået til.

## Parametre
1. Navnet på den genvej på skrivebordet, der skal kopieres til autostart.