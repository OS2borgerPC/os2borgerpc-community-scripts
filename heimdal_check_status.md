---
title: "Heimdal tjek status"
parent: "Fejlfinding"
source: /assets/os2borgerpc-scripts/common/fejlfinding/heimdal_check_status.sh
parameters:
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Scriptet gør tre ting: 
1. Tjekker om heimdal-clienthost-servicen kører
2. Skriver de loglinier fra servicen i dag, som indeholdet ordet "licens" (dette kan bruges til at verificere, om servicen kan se licensnøglen)
3. Skriver de seneste loglinier fra servicen fra i dag (ufiltreret)

Informationen findes, efter kørsel, i jobloggen.