---
title: "System - BeyondTrust: Installer klient (Bomgar)"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/install_bomgar.sh
parameters:
  - name: "Bomgar's .desktop-fil"
    type: "file"
    default: null
    mandatory: true
  - name: "Filnavnet på Bomgar's .desktop fil (inkl. filendelsen)"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
Installerer direkte fra den .desktop-fil , man får fra Bomgar / BeyondTrust.

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.