---
title: "Chrome - Autostart tilføj/fjern"
parent: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/chrome_autostart.sh
parameters:
  - name: "Tilføj"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script er i kategorien "Udfases", da det nyere script "OS2borgerPC - Autostart program" kan autostarte vilkårlige programmer, inkl. Chrome eller andre browsere.

Dette script tilføjer eller fjerner Google Chrome fra autostart.
Autostart betyder at Google Chrome vil starte op når brugeren logger ind.

BEMÆRK: Dette script kan ikke længere sætte fuldskærms-tilstand! Til det bruges i stedet scriptet "Chrome - Start i maksimeret, fuld skærm eller kiosk tilstand".

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
- Tilføj:
   Sæt hak for at få Google Chrome til at starte automatisk efter login.
   Lad stå tom for at fjerne Google Chrome fra automatisk opstart.

