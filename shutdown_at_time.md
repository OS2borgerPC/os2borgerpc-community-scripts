---
title: "System - Luk ned dagligt"
parent: "System"
source: os2borgerpc-scripts/common/system/shutdown_at_time.sh
parameters:
  - name: "Timer"
    type: "string"
    default: null
    mandatory: true
  - name: "Minutter"
    type: "int"
    default: null
    mandatory: false
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Lukker computeren ned på et bestemt tidspunkt hver dag.

Inputparametre:
  1. Timer: Angiver hvilket timetal computeren lukker ned.
  2. Minutter: Angiver hvilket minuttal computeren lukker ned.

Eksempel:
Du vælger henholdsvis parametrene "20" og "30" - og maskinen vil dagligt lukke ned kl. 20:30.

Det er også muligt at angive "--off" som første parameter og et tomt andet parameter. Dette standser den daglige nedlukning.

Brugeren varsles fem minutter før nedlukningen.

NB: Brugeren har ingen mulighed for at undgå nedlukning.

Dette script er blevet testet og virker på Ubuntu 22.04.