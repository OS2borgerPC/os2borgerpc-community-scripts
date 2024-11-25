---
title: "System - Skift skærmopløsning (resolution)"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/change_resolution.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Bredde"
    type: "int"
    default: null
    mandatory: false
  - name: "Højde"
    type: "int"
    default: null
    mandatory: true
compatibility: 
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Dette script kan bruges til at ændre skærmopløsningen på en OS2borgerPC eller OS2borgerPC Kiosk.
Det påvirker skærmopløsningen på loginskærmen og for borger men ikke superuser. Superuser kan selv styre sin skærmopløsning via indstillinger.
Afprøv eventuelt de forskellige skærmopløsninger mens du er logget ind som superuser, inden scriptet køres.

Scriptet har ingen effekt, hvis der vælges en opløsning, som maskinen ikke understøtter.
Log-outputtet fra scriptet vil indeholde en liste over de gyldige skærmopløsninger.

Scriptet tager tre inputparametre:
1. Aktiver?
Sæt hak i afkrydsningsfeltet for at skifte til den valgte opløsning.
Lad feltet stå tomt for at deaktivere scriptet og skifte tilbage til standardopløsningen.
2. Bredde
Bredden på den ønskede opløsning i pixels. Har ingen effekt, hvis scriptet deaktiveres.
3. Højde
Højden på den ønskede opløsning i pixels. Har ingen effekt, hvis scriptet deaktiveres.

Sæt hak og lad Bredde-parameteren være tom for alene at liste de opløsninger, som skærmen understøtter.

Scriptet tager først effekt efter en genstart.