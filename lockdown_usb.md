---
title: "Bloker for login ved USB-event"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/lockdown_usb.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script har primært det formål at forhindre, at der indsættes en keylogger ml. computer og keyboard, uden at det opdages.
Det er skrevet som en udvidelse til "Detekter nytilsluttet keyboard", men forskellen er at det både reagerer på indsættelse og udtagning af USB-enheder, og at det gælder alle USB-enheder fremfor kun keyboards. Dette er også relevant, fordi nogle enheder ikke altid identificeres som keyboards, såsom hvis der er tale om nogle receivere til både mus og tastatur.

Scriptet har yderligere den forskel fra "Detekter nytilsluttet keyboard", at Borger-konto øjeblikkeligt låses ved en hændelse, som kan være relevant hvis det kan tage personale noget tid at opdage Sikkerhedshændelsen og få den undersøgt.

BESKRIVELSE:
Installerer en systemtjeneste, der låser maskinen, når USB-udstyr indsættes eller fjernes. Der skrives også en log i /var/log/usb-events.log om de hændelser, hvor USB-udstyr blev indsat eller fjernet.

Bruges sammen med sikkerhedsscriptet "Detekter låst/udløbet bruger event", hvis man ønsker en advarsel når computeren låses, og når Borger-kontoen er låst, kan man bruge scriptet "Login - Sæt Borger som aktiv efter blokeret login (lås op)".

VIGTIG BEMÆRKNING: 
Scriptet er kun aktivt, når maskinen er tændt!
Af den grund er det centralt, at besøgende ikke kan tilgå maskinerne mens de er slukket, uden at det opdages.

Derfor anbefaler vi også at benytte det sammen med:
1. Sikkerhed - Blokér for login ved hård nedlukning (Script)
2. Desktop - Fjern Luk Ned, Genstart og Hviletilstand fra menuen (Script)

På denne måde kan brugeren ikke lukke computeren ned fra menuen, og hiver de strømstikket vil Borger-kontoen låses efter opstart, så personalet kan undersøge om der skulle være indsat en keylogger ml. computer og keyboard.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktivér:
    Sæt hak: Blokering for login ved USB-event
    Lad stå tom: Fjerner blokering for login ved USB-event (standard)

