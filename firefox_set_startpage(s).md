---
title: "Firefox - Sæt startside(r)"
parent: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/firefox_set_startpage(s).sh
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "EKSTRA_URLS"
    type: "string"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Scriptet udfases til fordel for det nyere "Firefox - Kiosk & Sæt startside(r)".

Scriptet fjerner alle default startsider (inkl. fanen "Firefox Privacy Notice"), som køres hver gang Firefox startes for første gang i en given ny bruger-session.
Udover at sætte startsiden kan man tilføje en liste med yderligere ekstra faner, som man kunne tænke sig. Læs mere forneden.

## Parametre

Eksempel med startside plus en ekstra fane:

URL  sættes til: https://magenta.dk

EKSTRA_URLS sættes til http://example.com

Hvis man skal have mere end 1 ekstra fane, så separeres links med "|".

Eksempel med startside plus tre ekstra faner:

EKSTRA_URLS = https://eks1.com|https://eks2.com|https://https://ex1.com3.com