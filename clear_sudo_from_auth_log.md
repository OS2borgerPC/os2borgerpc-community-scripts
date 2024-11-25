---
title: "System - Fjern sudo og user expiration fra auth.log"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/clear_sudo_from_auth_log.sh
compatibility: 
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Løser et problem med sudo-advarsler relateret til OS2borgerPC image 3.1.0 som enkelte kunder har oplevet. Specifikt lå der nogle sudo-kørsler i loggen fra oprettelsen af imaget som ved en fejl udløste sudo-advarsler.

Specifikt sletter scriptet gamle sudo-sikkerhedshændelser fra computeren, så de kontinuerlige advarsler stoppes.

Opdatering: Scriptet sletter nu også user expiration-begivenheder fra samme log, for at stoppe dé advarsler.

Dette script er blevet testet og virker på Ubuntu 22.04.