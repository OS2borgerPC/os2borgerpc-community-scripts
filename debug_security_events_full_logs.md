---
title: "Fejlfinding: Sikkerhedshændelser - Send logfiler"
parent: "Fejlfinding"
source: /assets/os2borgerpc-scripts/common/fejlfinding/debug_security_events_full_logs.sh
parameters:
  - name: "Logfil (all / auth / sys / kern)"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Sender en eller flere logs til jobloggen (kern.log, syslog, auth.log - eller alle tre), som er de logfiler sikkerhedsscripts læser, når de giver sikkerhedshændelser.

Procedure:
1. Kør scriptet
2. Kopier de relevante linier ud af logoutputtet og ind i en fil, kaldet eks. outputfil.gz.base64
3. Dernæst kan logfilen læses således fra terminalen på en Linux-computer:
   base64 --decode outputfil.gz.base64 | gunzip > log.txt