---
title: "Slet printer"
parent: "Printer"
source: os2borgerpc-scripts/os2borgerpc/printer/printer_del.sh
parameters:
  - name: "Navn"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Slet den angivne printer.

Det kan både være en regulær netværksprinter eller en Princh-printer.

For at finde navnet på printeren, kan du køre scriptet "Printer - Vis printer-liste".

Dette script er blevet testet og virker på Ubuntu 22.04.