---
title: "Chromium med onboard-tastatur skjul/vis"
parent: "Kiosk"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/wm_keyboard_hide_button.sh
parameters:
  - name: "Tilføj knappen?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Hvilken browser/program?"
    type: "string"
    default: "chromium"
    mandatory: true
  - name: "Knap-ikon"
    type: "file"
    default: null
    mandatory: true
  - name: "Y-akse-justering"
    type: "int"
    default: 0
    mandatory: true
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Dette script er lavet til at muliggøre at vise/skjule skærmtastaturet pba. en knap, 
der placeres nede i venstre hjørne.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Chromium Installer
- Chromium Autostart
- Chromium med Onboard-tastatur

Det tager først effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
- 1: Aktiver: 
  Sæt hak: Knappen til at skjule skærmtastaturet vises
  Lad stå tom: Knappen til at skjule skærmtastaturet fjernes (standard)
- 2: Hvilken browser/program? - navnet på programmet der kører sideløbende med tastaturet. Eks. "chromium" eller "firefox".
- 3: Det billede/ikon der skal bruges på knappen til at vise/skjule skærmtastaturet, i PNG-format. Skriv til os hvis du ikke selv har et passende.
- 4: Y-akse-justering kan bruges til at flytte knappen længere op eller ned. Enheden er i pixels. 
       0 betyder ingen justering (standard)
       Positive tal rykker knappen længere ned. (dvs. tættere på kanten og potentielt ud af billedet)
       Negative tal rykker knappen længere op (dvs. længere væk fra kanten)

