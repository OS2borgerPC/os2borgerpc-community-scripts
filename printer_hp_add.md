---
title: "HP: Tilføj (ældre) HP-printer"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_hp_add.sh
parameters:
  - name: "0 = USB, 1 = Netværksprinter"
    type: "int"
    default: null
    mandatory: true
  - name: "Ønsket navn for printeren"
    type: "string"
    default: null
    mandatory: true
  - name: "IP-adresse (hvis netværksprinter er valgt)"
    type: "string"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script forsøger at tilføje en HP-printer.
Det er et alternativ til scriptet "Tilføj netværksprinter". Vi foreslår først at prøve det scripts, og hvis det så ikke virker overhovedet eller ikke virker hensigtsmæssigt, kan det være værd at afprøve dette script.

Printeren kan være en netværksprinter eller USB.
Hvis det er en netværksprinter, skal der angives en IP-adresse.

Dette script tilføjer printeren, men sætter den ikke som standard. Kør scriptet "Printer - Sæt standard-printer" for bagefter at sætte denne printer til standard, med samme navn som du giver printeren, når du kører dette script.