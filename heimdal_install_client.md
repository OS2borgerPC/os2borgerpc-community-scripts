---
title: "Heimdal: Installer klient"
parent: "OS2BorgerPC blandet"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/heimdal_install_client.sh
parameters:
  - name: "Installér heimdal"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Licensnøgle fra Heimdal"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

Scriptet er skrevet på basis af Heimdals egne guides, som pt. kan findes her:
- https://support.heimdalsecurity.com/hc/en-us/articles/4433189823773-Installing-the-HEIMDAL-Agent-Ubuntu-Debian-
- https://prodcdn.heimdalsecurity.com/resources/Heimdal%20Agent%20guide%20for%20Ubuntu.pdf

Grundlæggende gør scriptet ikke meget andet end at hente Heimdals eget installationsscript og køre dette - bortset fra håndteringen af sletningen af Heimdal, da dette ikke er noget, Heimdals eget script pt. kan håndtere.

## Parametre
Sæt hak i afkrydsningsfeltet "Installér", for at installere applikation. For at afinstallere applikationen fjernes hakket.

Parameteret 'Licensnøgle' er den tilkøbte Heimdal-licens, som findes i jeres respektive Heimdal Dashboard.

