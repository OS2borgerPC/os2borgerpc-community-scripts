---
title: "Microsoft Intune: Installer"
parent: "Programmer"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/microsoft_intune_install.sh
parameters:
  - name: "Installér?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script installerer Microsoft Intune, baseret på Microsofts egen vejledning dertil, som findes her:
https://learn.microsoft.com/en-us/mem/intune/user-help/microsoft-intune-app-linux

Bemærk: Dele af dette script er skrevet specifikt til 22.04, så det vil ikke virke i 20.04 i sin nuværende form.