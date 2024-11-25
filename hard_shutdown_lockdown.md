---
title: "Bloker for login ved hård nedlukning"
parent: "Sikkerhed"

source: os2borgerpc-scripts/os2borgerpc/sikkerhed/hard_shutdown_lockdown.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script låser bruger-kontoen ved en hård nedlukning (f.eks. hvis man hiver strømstikket ud eller slukker maskinen på knappen).
Dets primære formål er at være med til at forhindre borgere i at omgå scriptet "Sikkerhed - Bloker for login ved USB-event".

SIKKERHEDSMÆSSIGE OVERVEJELSER:
En BorgerPC kan kun overvåges af software såsom sikkerhedsscripts, så længe, den er tændt.
Dvs. hvis Borger kan tilgå maskinen mens den er slukket, kan der indsættes en keylogger, uden at det kan detekteres.
Derfor er dette script skrevet til at låse en maskine for login til Borger og give en advarsel hvis strømmen går på maskinen, eksempelvis ved tryk på sluk-knappen eller ved at hive strømstikket.
Dette script låser IKKE maskinen hvis den lukkes ned på normal vis - eksempelvis ved at vælge "Luk ned" fra menuen, eller kørsel af scripts til genstart/nedlukning.
Af denne grund er det også centralt for dette script, at Borgers mulighed for at lukke ned/genstarte fjernes. Dette er der et script til, som nævnes længere nede.

BESKRIVELSE:
Det er en god idé at verificere at det virker, hvis computeren slukkes på knappen eller strømstikket fjernes.

Dette script bruges sammen:

- Scriptet "Desktop - Fjern Luk Ned, Genstart og Hviletilstand fra menuen"
...så Borgeren ikke bare kan lukke computeren ned fra menuen, så fjernelse af strømstik eller knappen på maskinen er eneste mulighed for at slukke den.

- Sikkerhedsscriptet "Detekter låst/udløbet bruger event", hvis man ønsker en advarsel, når Borger-kontoen låses.

Når man så oplever, at Borger-kontoen er blevet låst, kan den låses op med Scriptet:
"Sikkerhed - Sæt Borger som aktiv efter blokeret login (lås op)".

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Aktivér:
  Sæt hak: Blokering af login ved hård nedlukning slås til
  Lad stå tom: Blokering af login ved hård nedlukning slås fra (standard)

