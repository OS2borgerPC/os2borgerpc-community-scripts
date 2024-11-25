---
title: "System - Skift navn på en computer"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/change_computer_name.sh
parameters:
  - name: "Nyt computernavn"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Dette script opdaterer navnet på en computer.
Scriptet ændrer specifikt computerens "hostname", og det navn maskinen har i sine "Konfigurationer" både i computerens lokale indstillinger og på adminsitet.

Efter kørslen - for at navnet skal være opdateret overalt - skal du gå ind på den givne computer og ændre dens navn til det samme.

Navnet skal være et gyldigt "hostname":
https://www.man7.org/linux/man-pages/man7/hostname.7.html

Tak til Sønderborg for inspiration til dette script.

Dette script er blevet testet og virker på Ubuntu 22.04.