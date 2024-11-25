---
title: "Sæt standard-skanner"
parent: "Skanner"
source: /assets/os2borgerpc-scripts/os2borgerpc/skanner/dconf_default_scanner.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Navn/Adresse på skanner"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Vi anbefaler at undlade at køre dette script til at begynde med, medmindre der decideret er et problem med at den forkerte skanner er forvalgt i Dokumentskanner.
I de fleste tilfælde vil dette script nemlig ikke være nødvendigt, da den rette skanner allerede vil være valgt, evt. efter den første gang er blevet valgt manuelt fra listen.

For at finde ud af hvad pågældende skanners navn/adresse er, så kør først scriptet "Skanner - Vis tilgængelige skanner(e)".