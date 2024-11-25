---
title: "Opsæt HP USB Skanner"
parent: "Skanner"
source: /assets/os2borgerpc-scripts/os2borgerpc/skanner/hp-usb-scanner-setup.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Flere skannere vil virke automatisk, men nogle HP-skannere kan have brug for en driver, som denne installerer.
Dette script gør det muligt at skanne via en understøttet HP-skanner over USB, vha. hp-plugin.

Se liste over understøttede skannere til USB-skanning hos HP selv:
https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index

Virker det ikke, kan en systemopdatering muligvis hjælpe, da man ud fra ovenstående liste kan se, 
forskellige scannere kræver forskellige versioner af "hplip", som en generel systemopdatering (eks. via "System - Opdater alt") vil opdatere.

Dette script er blevet testet og virker på Ubuntu 22.04.