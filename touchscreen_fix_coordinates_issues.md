---
title: "Touchskærm: Fix problemer med koordinater/akser"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/touchscreen_fix_coordinates_issues.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Invertér X og Y-akser?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Orientering (normal/right/left)"
    type: "string"
    default: null
    mandatory: false
compatibility: 
  - "Kiosk"
---

## Beskrivelse
Dette script kan løse to problemer hvor touchskærms-input tolkes forkert:

PROBLEM 1: OMVENDTE X- OG Y-AKSER (SPEJLEDE)
Det blev erfaret i Hvidovre at nogle touchskærme fra hardwarens side ser X-aksen og Y-aksen som startende i modsatte side ift. hvad styresystemet ser. Det medfører der er inkonsistens ml. hvor man klikker og hvor styresystemet faktisk sætter markøren.
Dvs. at hvis du bevæger fingeren mod venstre, så bevæger markøren sig mod højre - og omvendt. Op/ned er tilsvarende spejlet.

PROBLEM 2: Roteret touchskærm:
Det blev erfaret i Ballerup at hvis touchskærmen er roteret i forhold til dens normale orientering, vil den fortsat tolke input ud fra dens normale orientering.
Dette medfører typisk, at der tilsyneladende bliver byttet om på X-aksen og Y-aksen.
Dvs. at hvis du bevæger fingeren mod højre, så bevæger markøren sig opad - og omvendt. Bevæger du fingeren opad bevæger markøren sig til venstre - og omvendt.

INPUTPARAMETRE:
1. Aktivér?:
    Sæt hak for at ændre i indstillingerne til touchskærmen.
    Lad stå tom for at nulstille ALLE ændringer i indstillingerne til touchskærmen til det de var sat til som standard.
2. Inverter X- og Y-akser?:
    Sæt hak for at invertere både X- og Y-aksen.
    Lad stå tom for IKKE at ændre på denne indstilling.
3. Orientering (normal/right/left):
    Denne parameter skal matche den orientering, som er valgt i "OS2borgerPC Kiosk - Chromium Autostart"
    Hvis den efterlades tom, anvendes orienteringen "normal"

Ændringen tager først effekt efter genstart.

Vi anbefaler at starte med at afprøve scriptet på én maskine før det eventuelt rulles ud på flere.

Tak til John Vishart fra Hvidovre for at skrive den oprindelige løsning.

Dette script er kun blevet testet på OS2borgerPC Kiosk, men det burde reelt set også virke på en regulær OS2borgerPC.

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.