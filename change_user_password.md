---
title: "Skift kodeord for Borger"
parent: "System"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/change_user_password.sh
parameters:
  - name: "Kodeord"
    type: "password"
    default: null
    mandatory: true
  - name: "Gentag kodeord"
    type: "password"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Skifter publikumsbrugerens ("Borger", også kaldet "user") kodeord til det angivne.
Da publikumsbrugeren logger ind automatisk, er det normalt ikke nødvendigt at sætte et kodeord for denne bruger.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
- Kodeord
- Gentag kodeord

