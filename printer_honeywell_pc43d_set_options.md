---
title: "Honeywell PC43d billetprinter: Sæt indstillinger (Intermec)"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_honeywell_pc43d_set_options.sh
parameters:
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script skulle gerne sætte de ønskede indstillinger for billetprinteren Intermec/Honeywell PC43d.

Specifikt sættes følgende indstillinger:
- Papirstørrelse sættes til 63mm x 114mm
- Orientering sættes til Omvendt Landskab
- Medieindstillinger sættes til ”Sort mærke”

Derudover sættes to indstillinger som Honeywell's eget bygge-script forsøger at sætte for printeren, som vi tænker potentielt kan være nødvendige:
- usb-no-reattach-default=true
- usb-unidir-default=true

//Magenta