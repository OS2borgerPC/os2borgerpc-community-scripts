---
title: "Slå automatisk netværksprinter-finding fra/til"
parent: "Printer"
source: os2borgerpc-scripts/os2borgerpc/printer/printer_toggle_network_discovery.sh
parameters:
  - name: "Slå automatisk netværksprinter-finding FRA?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Fjerner alle printere, der automatisk er fundet via netværket.
Derefter kan en printer så eventuelt tilføjes manuelt via enten scriptet "Printer - Tilføj netværksprinter" eller "Printer - Tilføj netværksprinter (PPD-fil skal angives)".
Hvis I udelukkende bruger Princh kan i nøjes med de installationsscripts dertil.

Hvis det ikke tager effekt med det samme, foreslås det at genstarte maskinen, efter scriptet er kørt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
  Slå automatisk netværksprinter-finding fra?:
    Sæt hak: Slår netværksprinter-finding fra
    Lad stå tom: Slår netværksprinter-finding til (standard)