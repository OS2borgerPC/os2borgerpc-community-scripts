---
title: "Genvej til valgfri mappe fra skrivebordet"
parent: "Desktop"
source: os2borgerpc-scripts/os2borgerpc/desktop/desktop_shortcut_to_directory.sh
parameters:
  - name: "Tilføj?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Sti til mappe"
    type: "string"
    default: null
    mandatory: true
  - name: "Navn på genvej"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Opretter en genvej til en valgfri mappe på Skrivebordet.
Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Stien til mappen (eksempelvis: "/home/user/Dokumenter" )
2. Navnet på genvejen (eksempelvis: "Skannede filer" )
...begge uden citationstegnene rundt om.

Bemærk at ift. stien, så har store og små bogstaver en betydning!

