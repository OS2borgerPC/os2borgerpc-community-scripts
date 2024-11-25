---
title: "Juster skærmdvale"
parent: "Kiosk"
summary: "Scriptet deaktiverer eller genaktiverer skærmdvale ved inaktivitet for en OS2borgerPC Kiosk."
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/change_monitor_power_saving.sh
parameters:
  - name: "Tillad skærmdvale?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Scriptet deaktiverer eller genaktiverer skærmdvale ved inaktivitet for en OS2borgerPC Kiosk.

Det kan være særligt brugbart på nogle AIOs/computer-touchskærme, der ikke vækkes ved berøring, eller ved computere der skal vise eksempelvis slideshows, hvor man ikke kan indstille at skærmen aldrig skal slukke i BIOS eller i skærmens indbyggede indstillinger.

Scriptet tager effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tillad skærmdvale: 
  Sæt hak for at tillade skærmdvale.
  Lad stå tom for ikke at tillade det. (standard)

