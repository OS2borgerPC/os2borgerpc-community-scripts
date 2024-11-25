---
title: "Log altid ud efter X minutter med nedtæller"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/always_logout_after_time_visual.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Antal MINUTTER til logud"
    type: "int"
    default: null
    mandatory: true
  - name: "Tekst der vises før tidspunktet i nedtællingen"
    type: "string"
    default: null
    mandatory: false
  - name: "Antal SEKUNDER tilbage af nedtællingen hvor bruger advares"
    type: "int"
    default: null
    mandatory: false
  - name: "Tekst i advarselsinfoboks om kommende logud"
    type: "string"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Opsætter en OS2borgerPC til altid at logge ud efter et bestemt antal minutter, med en visuel nedtæller på skærmen, til at vise, hvor længe, der er tilbage før logud.

## Parametre

  1. (Påkrævet) Aktivér?: Sæt hak for at aktivere scriptet, lad stå tom for at deaktivere scriptet.

  2. (Påkrævet) Antal MINUTTER før der logges ud.

  3. (Valgfri) Tekst der vises før nuværende tidspunkt i nedtællingen.
      Standardværdi: "Tid tilbage: "

  4. (Valgfri) Hvor mange SEKUNDER inden logud skal de advares om kommende logud.
     Standardværdi: 60

  5. (Valgfri) Tekst der vises i beskeden om at brugeren snart logges ud.
      Standardværdi: "Tiden er udløbet om et minut. Husk at gemme dine ting."