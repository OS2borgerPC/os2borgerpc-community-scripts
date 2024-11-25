---
title: "Nulstil crontab ved logud"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/prevent_crontab_persistence.sh
parameters:
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script udvider den automatiske oprydning på OS2borgerPC til også at nulstile users (borgers) crontab samt eventuelle planlagte "at"-kommandoer efter hvert logud.

På computere, som er installeret ud fra ældre images, vil der også blive tilføjet en række mindre udvidelser af den automatiske oprydning, som er indbygget i nyere images.
Scriptet sørger således også for, at computeren har den samme automatiske oprydning, som en computer der er installeret ud fra nyeste image.

Scriptet tager ingen parametre.