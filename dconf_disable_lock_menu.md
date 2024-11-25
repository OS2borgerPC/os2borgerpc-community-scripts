---
title: "Desktop: Fjern lås fra menuen"
parent: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/dconf_disable_lock_menu.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script er i kategorien "Udfases", da fjernelsen af lås fra menu allerede er indbygget i image 5.0.0 og senere,
og også fordi låsning pt. giver nogle problemer ift. rydning af hjemmemappen.

Fjerner muligheden for at "låse" computeren fra menuen oppe til højre, 
og den relaterede genvejstast CTRL-l fjernes også.

Dette script er blevet testet og virker på Ubuntu 22.04.