---
title: "LibreWolf: Overskriv LibreWolf startsider"
parent: "Browser"
source: scripts/librewolf_startpages.sh
parameters:
  - name: "StartPage-URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Extra-URLs"
    type: "string"
    default: null
    mandatory: false
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
Sæt startsider på LibreWolf browseren.

Der modtages 2 parametre:
1. StartPage-URL: 
  Link, som skal automatisk åbnes når LibreWolf åbnes
  eksempel:
    https://www.borger.dk/
2. Extra-URLs
  Hvis der ønskes at der åbnes flere websider, skrives de her.
  hvis der er flere hjemmesider, skal de adskildes med en pipe "|" uden mellemrum.
  eksempel:
    https://www.fane2.dk|https://biblioteket.sonderborg.dk|https://www.fane4.dk