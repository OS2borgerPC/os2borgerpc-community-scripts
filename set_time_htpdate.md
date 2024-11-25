---
title: "System - Synkroniser tid nu (alternativ til NTP)"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/set_time_htpdate.sh
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Normalt i Ubuntu og Windows synkroniseres tiden løbende over internettet, via protokollen NTP.
NTP kører normalt på port 123 over UDP.

Nærmere information om NTP:
https://en.wikipedia.org/wiki/Network_Time_Protocol

Nogle kommuner har dog strikse firewalls der bl.a. blokerer NTP, og derved kan tiden på computeren efterhånden komme ud af synkronisering med den faktiske tid.

Hvis det er muligt, vil vi i stedet for dette script, klart anbefale at åbne op for og bruge NTP.

Dette script synkroniserer tiden en enkelt gang via protokollen HTTP Time Protocol (HTP), som modsat NTP vil fungere, så længe maskinen har almindelig netadgang (port 80/443). Programmet der bruges dertil hedder htpdate.

Teknisk set kan htpdate også sættes op til løbende at synkronisere, men det understøtter dette script IKKE på nuværende tidspunkt.

Dette script er blevet testet og virker på Ubuntu 22.04.