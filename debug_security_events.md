---
title: "Sikkerhedshændelser"
parent: "Fejlfinding"
source: /assets/os2borgerpc-scripts/common/fejlfinding/debug_security_events.sh
parameters:
  - name: "Type (se beskrivelse)"
    type: "string"
    default: null
    mandatory: false
  - name: "Antal linier fra logfil"
    type: "int"
    default: null
    mandatory: false
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Skriver forskellig information som er relevant ift. at fejlfinde sikkerhedshændelser til Job-loggen. 
Eksempelvis de seneste linier fra de systemlogs, der genereres sikkerhedshændelser pba.

BAGGRUNDSINFORMATION:
Logfilen "authlog" bruges af sikkerhedsscriptene "Sudo" og "Detekter låst Borger"
Logfilen "syslog" bruges ift. "Detekter nytilsluttet keyboard"
USB-scriptet og bloker for login ved hård nedlukning har sine egne services, og ikke pt. logfiler. Men de låser borger-kontoen, som så kan læses fra authlog.

## Parametre
- Type: Vælg ml. all, authlog, syslog, sudo eller usermod
- Antal linier fra logfil:
Eksempelvis 250