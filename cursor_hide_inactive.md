---
title: "System - Skjul musemarkør ved muse-inaktivitet"
parent: "System"
source: scripts/cursor_hide_inactive.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Skjuler markøren efter 5 sekunders muse-inaktivitet.

Specifikt for Kiosk:
  Dette script forudsætter at følgendes scripts allerede er kørt:
  - Chromium Autostart

Dette script er blevet testet og virker på Ubuntu 22.04.