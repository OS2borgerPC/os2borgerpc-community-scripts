---
title: "Juster adgang til terminalen"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/protect_terminal.sh
parameters:
  - name: "Giv adgang til terminalen"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Scriptet kan spærre adgangen til terminalen for publikumsbrugeren. superuser har stadig adgang.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Bemærk, at brugerens adgang til terminalen ikke i sig selv er et sikkerhedshul. Brugeren kan fra terminalen gøre præcis de ting, som vedkommende har tilladelse til i forvejen.

Hvis brugeren er i stand til at udfordre systemets sikkerhed fra terminalen, skyldes det altså de underliggende tilladelser - ikke terminaladgangen - som ikke gør en grundlæggende forskel.

Blokering af terminaladgangen er dermed dybest set en lappeløsning, som kan være ganske fornuftig - men de underliggende problemer burde adresseres, og hvis de bliver det, vil det ikke længere være nødvendigt at blokere for terminaladgangen.

--------------------

Dette script er blevet testet og virker på Ubuntu 22.04.

Udviklet og testet i samarbejde med Aarhus kommune.