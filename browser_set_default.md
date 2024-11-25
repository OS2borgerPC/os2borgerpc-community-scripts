---
title: "Sæt standard-browser"
parent: "Browser"
source: os2borgerpc-scripts/os2borgerpc/browser/browser_set_default.sh
summary: "Skifter standard-browseren ml. eksempelvis Firefox og Chrome."
parameters:
  - name: "Ønsket standardbrowser (firefox, google-chrome, microsoft-edge)"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Installerer du andre browsere, virker scriptet også med disse.

Ved en frisk installation af BorgerPC er firefox allerede standardbrowser.
Hvis maskinen i stedet skal bruge Chrome eller Edge som standardbrowser, forudsætter det at disse browsere først er installeret, via de pågældende scripts.

Det kan være nødvendigt med logud, før det tager effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: 'firefox' skifter standardbrowseren til firefox, 'google-chrome' skifter den til Chrome og 'microsoft-edge' sætter den til Edge.



