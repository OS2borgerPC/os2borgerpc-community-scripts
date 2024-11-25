---
title: "Konica Minolta-printer: Tilføj netværksprinter"
parent: "Printer"
source: /assets/os2borgerpc-scripts/"os2borgerpc/printer/printer_konica_minolta_add.sh"
parameters:
  - name: "Navn (OBS: INGEN ÆØÅ, mellemrum eller apostrofer)"
    type: "string"
    default: null
    mandatory: true
  - name: "IP-adresse"
    type: "string"
    default: null
    mandatory: true
  - name: "Beskrivelse / Placering (INGEN ÆØÅ)"
    type: "string"
    default: null
    mandatory: true
  - name: "Driver-pakke-fil (hentes hos Konica Minolta)"
    type: "file"
    default: null
    mandatory: true
  - name: "Navn på driver-fil (PPD), der matcher printer-modellen"
    type: "string"
    default: null
    mandatory: true
  - name: "Protokol"
    type: "string"
    default: "socket"
    mandatory: true
  - name: "Sæt som standard?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script er designet til at skulle kunne installere en PPD og filter-filer for vilkårlige Konica Minolta-printere.

## Parametre
Første trin er at finde printeren på Konica Minoltas hjemmeside, og downloade den driver-pakke, der hedder noget alá følgende (versionsnummeret kan variere): "KMbeuUXv1_26_multi_language.tar.gz"

Denne driver-pakke-fil vedhæftes som dette scripts fjerde parameter.

Det femte parameter er navnet på den specifikke driver, der matcher den Konica Minolta-printer, du ønsker at tilføje. Du finder filnavnet på den matchende driver ved at kigge i filen:
"BEU Linux CUPS Driver Guide.pdf"
...som kan downloades på samme side som driveren.

Eksempel - Bizhub C258:
Driver og guide kan findes her:
https://www.konicaminolta.dk/da-dk/hardware/udgaede-maskiner/bizhub-c258
Inde på siden går du ned under "Downloads" og trykker på pilen under "Download"-kolonnen. Herefter henter du "KMbeuUXv1_26_multi_language.tar.gz" og "BEU Linux CUPS Driver Guide.pdf". 
Åbn PDF'en og kig nær bunden af dokumentet i sektionen "Supported products" for at finde hvilken driver (filnavn) der matcher din printer-model.


