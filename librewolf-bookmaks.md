---
title: "LibreWolf: Overskriv LibreWolf bogmærker"
parent: "Browser"
source: scripts/librewolf_bookmarks.sh
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Placering"
    type: "text_field"
    default: toolbar,menu
    mandatory: false
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
Overskriv bogmærkerne i LibreWolf browseren.

Der modtages 2 parametre:
1. URL: 
  Links til de websider der skal sættes i bogmærkerne, adskildet med en pipe "|" uden mellemrum.
  eksempel:
    https://www.borger.dk|https://biblioteket.sonderborg.dk
2. Placering
  Om bogmærkerne skal være fremvist på værktøjslinjen, eller gemt i bogmærkemenuen.
  `toolbar` (standard) sætter bogmærkerne på en linje yderst i browseren, hvor de er altid synlige.
  `menu` sætter bogmærkerne kun i bogmærkemenuen, som skal tilgås gennem browser-indstillingerne.