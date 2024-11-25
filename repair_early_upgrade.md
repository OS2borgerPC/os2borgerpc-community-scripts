---
title: "22.04 opgradering - Reparer tidlig opgradering"
parent: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/repair_early_upgrade.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script er beregnet til at blive brugt på de maskiner, hvor der blev klikket ja til opgradering til Ubuntu 22.04.
Det har til formål at udbedre de problemer, der kan opstå, som følge af at der blev klikket ja til opgraderingen.
Derudover indfører scriptet de samme indstillinger, som hvis maskinen var blevet opgraderet via vores opgraderingsproces.

Hvis der blev klikket ja til opgraderingen, vil maskinen have mistet forbindelsen til admin-sitet som følge heraf, hvilket bl.a. forhindrer kørsel af scripts. 
Dette problem er blevet udbedret på de fleste påvirkede maskiner, men løses på følgende vis, hvis man stadig har påvirkede maskiner:
1. Log ind som superuser
2. Åbn en terminal (Ctrl-Alt-t)
3. Skriv “sudo pip install os2borgerpc-client” (uden citationstegn)
4. Tryk “Enter”
5. Indtast superuser-password (Det vil ikke blive vist). Hvis I ikke har sat egen adgangskode, kan I finde standard-adgangskoden i BorgerPC-installationsguiden.
6. Tryk “Enter”

Herefter vil maskinen igen have forbindelse til admin-sitet og man vil kunne køre scripts på den.