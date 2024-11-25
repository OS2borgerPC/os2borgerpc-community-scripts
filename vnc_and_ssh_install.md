---
title: "Installer SSH og VNC"
parent: "Kiosk"
source: os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/vnc_and_ssh_install.sh
parameters:
  - name: "VNC kodeord"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Installer SSH og VNC for fjernadgang. 

Du kan lave SSH-forbindelse med det almindelige Unix-password.

Giv VNC-kodeordet med som parameter.

Dette script er blevet testet og virker på Ubuntu 22.04.