---
title: "Sæt NumLock-tilstand"
parent: "System"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc/lightdm_enable_numlock.sh
parameters:
  - name: "Slå numlock til"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script installerer numlockx og slår numlock til når computeren når til loginsiden.

OBS: Medmindre scriptet "Login - Slå scriptkørsel ved login" er kørt også, vil numlock først blive slået til efter brugeren logger på.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Sæt hak for at slå numlock til, eller lad stå tomt for at fjerne denne funktion igen.

