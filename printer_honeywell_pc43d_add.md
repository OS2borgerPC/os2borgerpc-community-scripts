---
title: "Honeywell PC43d billetprinter: Installer (Intermec)"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_honeywell_pc43d_add.sh
parameters:
  - name: "Installér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "CUPS-driver (en .tar.gz-fil - downloades hos Honeywell - se beskrivelse)"
    type: "file"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Nærmere info om printeren:
https://sps.honeywell.com/us/en/products/productivity/printers/desktop/pc43d-desktop-direct-thermal-barcode-printer

## Parametre
Første parameter afgører om printeren installeres eller fjernes.

Andet parameter kræver en .tar.gz-fil (en CUPS driver) som parameter, som fås fra Honeywell selv. 
At hente filen kræver et login til deres system, men det er gratis at oprette en bruger.
Filen skulle gerne have et navn alá:
cupsdriver-1.8.tar.gz
https://hsmftp.honeywell.com/