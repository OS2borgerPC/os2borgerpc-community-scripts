---
title: "Send løbende antal login dagligt til adminsitet"
parent: "Login"
source: os2borgerpc-scripts/os2borgerpc/login/get_daily_login_count.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script gør at computeren sender sit daglige antal logins til adminsitet. Dette kan give et indblik i hvor meget en given maskine anvendes.

Eksempel: 
Scriptet køres ud på en række maskiner. Man kigger på dataen d. 21/10 og vil kunne se der d. 20/10 var 10 logins på PC1, 12 logins på PC2, 8 logins på PC3 etc. 
Du kan derved se, hvor mange gange der er blevet logget ind på en given maskine på en given dag.

BEMÆRK: Denne data er ikke rigtig brugbar, før man slår automatisk login på den givne maskine FRA, som kan gøres med scriptet "Login - Automatisk borgerlogin til/fra". Inden da tælles såvel automatiske og manuelle logins med.

Dataen bliver sendt, så den kan ses under tabben "Konfigurationer" for en Computer, og den udstilles derfra igennem det nye API, så dataen kan importeres i programmer som Power BI, eller tilsvarende open source software.

Yderligere informationer:
- Maskinen vil kun indrapportere antal logins for de dage, hvor den har været tændt.
- Maskinen indrapporterer først antal logins for en given dag på den efterfølgende dag.
- Maskinen opbevarer dataen i 90 dage.

## Parametre
1. Aktiver?
Sæt hak i tjekboksen for at aktivere indrapportering af daglige antal login.
Lad tjekboksen stå tom for at deaktivere indrapporteringen.

