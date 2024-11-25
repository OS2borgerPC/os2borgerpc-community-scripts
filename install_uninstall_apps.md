---
title: "System - Installer/Fjern applikation/program"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/install_uninstall_apps.sh
parameters:
  - name: "Installer?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Pakkenavn(e)"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Dette script kan bruges til at installere eller fjerne applikationer/programmer, som kan installeres via Ubuntus pakkehåndteringssystem apt.
Scriptet kan dog ikke håndtere programmer, som har interaktive installere.

Vær forsigtig med at fjerne programmer, hvis du ikke er sikker på, hvad de bruges til.

Scriptet tager to inputparametre:
1. Installer?
   Sæt hak i afkrydsningsfeltet for at installere de valgte programmer.
   Lad feltet stå tomt for at fjerne de valgte programmer.

2. Pakkenavne
   Navnene på de applikationer, som skal installeres eller fjernes.
   Navnet skal matche de navne, som applikationerne har i Ubuntus pakkesystem "apt'.
   Disse pakkenavne kan typisk findes ved at google "Ubuntu install *appnavn*". Alternativt kan man spørge Magenta.
   Man kan også søge efter pakker/pakkenavne her:
   https://packages.ubuntu.com/

Eksempler:
   Ønsker man at installere/fjerne VLC Player, skal Pakkenavne være "vlc" (uden citationstegn).
   Ønsker man at installere/fjerne tegneprogrammet Pinta (Alternativ til MS Paint), skal Pakkenavne være "pinta" (uden citationstegn).
   Ønsker man at installere/fjerne VLC Player OG pinta, skal Pakkenavne være "vlc pinta" (uden citationstegn).
   Ønsker man at installere/fjerne 3D-modelleringsprogrammet Blender (alternativ til Paint 3D), skal Pakkenavne være "blender" (uden citationstegn).