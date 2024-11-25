---
title: "Chromium: Slå kiosk eller inkognito tilstand til/fra"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/chromium_kiosk_incognito.sh
parameters:
  - name: "Slå Kiosk til?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Slå inkognito til?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Slår kiosk og/eller inkognito tilstand til/fra i Chromium i en OS2borgerPC Kiosk-installation.

Som standard i OS2borgerPC Kiosk, er Kiosk slået TIL, mens inkognito er slået fra.
Med Inkognito til, vil den ikke huske logins efter genstart.

Dette script køres efter både "OS2borgerPC Kiosk - Installer Chromium" og "OS2borgerPC Kiosk - Autostart Chromium", 
men hvis disse allerede er kørt tidligere, behøves de ikke køres igen.

Efter kørsel tager det effekt efter en genstart.
Hvis du oplever, det ikke virker, så kør scriptet "OS2borgerPC Kiosk - Autostart Chromium" igen, efterfulgt af dette.

"Kiosk mode" er en slags begrænset tilstand indbygget som mulighed i flere browsere, hvor browseren typisk kører i fuld skærm, navigationsbaren, menuer og statusbarer er skjulte, og der ikke er nogen højrekliksmenu. Hvis det slås fra, kan der eksempelvis åbnes flere faneblade.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Kiosk:
    Sæt hak for at slå kiosk tilstand til (standardindstilling)
    Lad stå tom for at slå det fra.
2: Inkognito
    Sæt hak for at slå inkognito tilstand til
    Lad stå tom for at slå det fra (standardindstilling) .

