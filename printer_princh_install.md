---
title: "Installer Princh Cloud Printer"
parent: "Printer"
source: os2borgerpc-scripts/os2borgerpc/printer/printer_princh_install.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Installer Princh Cloud Printer

Efter dette script køres "Printer - Tilføj Princh Cloud Printer".

VIGTIG BEMÆRKNING: Dette script genererer pt. tre sudo-sikkerhedshændelser per computer, hvis man har sat en Sudo-Sikkerhedsregel op på den.
Dette skyldes ikke at vi selv bruger sudo i vores script, men at der i det installationsscript, Princh har udgivet, benyttes sudo.
Kontakt evt. Princh omkring at fjerne disse sudo-kommandoer, og i stedet køre servicen som root, eller bruge pkexec eller lign.

Dette script er blevet testet og virker på Ubuntu 22.04.