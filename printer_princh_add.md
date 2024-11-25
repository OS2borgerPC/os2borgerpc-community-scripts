---
title: "Tilføj Princh Cloud Printer"
parent: "Printer"
source: os2borgerpc-scripts/os2borgerpc/printer/printer_options_set.sh
parameters:
  - name: "Navn (OBS: INGEN ÆØÅ, mellemrum eller apostrofer)"
    type: "string"
    default: null
    mandatory: true
  - name: "ID"
    type: "int"
    default: null
    mandatory: true
  - name: "Beskrivelse / Placering (INGEN ÆØÅ)"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Forudsætninger:
Dette script køres efter scriptet "Printer - Installer Princh Cloud Printer".

Hvis du ønsker Princh sat som standard-printer, så kør herefter scriptet "Printer - Sæt en standard-printer", med det navn du gav printeren i dette script.

Har i endnu ikke en Princh-aftale, men ønsker at teste oplevelsen med det, stiller Princh dette test printer-ID til rådighed, som du kan indtaste som inputparameter til dette script:
990000

Vi tager udgangspunkt i Princh's egen installationsguide - hvis man vil kigge nærmere på den, kan den findes her:
https://2803061.fs1.hubspotusercontent-na1.net/hubfs/2803061/Setup%20and%20installation%20guides,%20tech%20reqs/Princh%20for%20Linux%20Installation%20Guide.pdf

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Navn: Det navn printeren vil få af styresystemet, som du selv bestemmer hvad skal være. Der er dog nogle tekniske begrænsninger: Navnet kan ikke indeholde Æ, Ø, Å, mellemrum, skråstreg eller apostroffer.

2. ID: Dette ID identificerer printeren fra Princhs side, og det skulle de kunne oplyse til dig. Det er et 6-cifret tal.

3. Beskrivelse / Placering: Beskrivelsen printeren får ift. styresystemet. Den vælger du frit selv. Beskrivelsen kan godt indeholde mellemrum. Indeholder den mellemrum "skal parametret skrives med citationstegn rundt om".

