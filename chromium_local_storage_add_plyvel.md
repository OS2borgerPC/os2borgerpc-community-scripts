---
title: "Chromium: Tilføj data til Local Storage"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/chromium_local_storage_add_plyvel.py
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Nøgle"
    type: "string"
    default: null
    mandatory: true
  - name: "Værdi"
    type: "string"
    default: null
    mandatory: true
  - name: "Luk browseren først?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "Kiosk"
---

## Beskrivelse
Kan tilføje tilfælde værdier for tilfælde hjemmesider i Chromium browserens "Local Storage".
Et eksempel på hvornår dette kan benyttes, er at bestemte hjemmesider gemmer "klik" på accept/nej tak til cookies i "Local Storage", så ved at sætte denne værdi, kan man skjule nogle cookie-popups.

En alternativ strategi til lige dét formål er at installere en browser-udvidelse til at fjerne cookie-popups. 
Det kræver dog at browser-udvidelsen kan identificere og fjerne den specifikke cookie-popup implementation.

Dette script kan omskrives til at understøtte andre Chromium-baserede browsere og/eller regulær OSborgerPC, hvis det ønskes.

## Parametre
1. URL: Den URL indstillingen skal sættes for
2. Nøgle: Navnet på attributten, der skal sættes
3. Værdi: Værdien på den navngivne attribut
4. Luk browser først?:
   Når browseren kører, sætter den en lås på "Local Storage" så andre ikke kan tilgå den. Derfor skal browseren lukkes for at opdatere databasen.
   Dette parameter er der grundlæggende hvis funktionaliteten skulle udvides til OS2borgerPC, og hvis scriptet skulle blive kørt i åbningstiden. Så kan det være man kun ønsker at køre det på tændte maskiner, hvor browseren ikke pt. kører.


