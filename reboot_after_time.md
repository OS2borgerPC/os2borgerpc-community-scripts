---
title: "Genstart computer efter X minutter"
parent: "System"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/reboot_after_time.sh
parameters:
  - name: "minutter"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Genstart computeren én gang efter et foruddefineret antal minutter.

Hvis antallet af minutter er større end fem, bliver brugeren notificeret først. Brugeren har ingen mulighed for at undgå genstarten.

BEMÆRK: Jobs lavet ud fra dette script vil altid ende i status "Afsendt".

Dette script er blevet testet og virker på Ubuntu 22.04.