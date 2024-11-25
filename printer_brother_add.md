---
title: "Brother-printer: Installer"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_brother_add.sh
parameters:
  - name: "LPR-driver"
    type: "file"
    default: null
    mandatory: true
  - name: "CUPS-wrapper"
    type: "file"
    default: null
    mandatory: true
  - name: "Forbundet via Netværk (fremfor USB)"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script kan installere vilkårlige Brother-printere-drivere.

Først vil vi anbefale at afprøve scriptet "Tilføj netværksprinter" med dets standardindstillinger, men hvis dét ikke virker, kan I prøve dette script.

## Parametre
  1. En LPR driver (en .deb fil)
  
  2. En CUPS-wrapper (også en .deb fil). 
  
  Begge ovenstående filer kan findes til download på Brothers hjemmeside, og uploades så som parametre til dette script.
  Eksempler på links til drivere for specifikke modeller af Brother-printere:
  - HL-L8260CDW: https://www.brother.dk/support/HL-L8260CDW/downloads
  - HL-L5100DN: https://www.brother.dk/support/HL-L5100DN/downloads
  - HL-L6400DW: https://www.brother.dk/support/HL-L6400DW/downloads
  - DCP-L8410CDW: https://www.brother.dk/support/DCP-L8410CDW/downloads

   Fra disse sider vælger du:
   1. Linux
   2. Linux (deb)
   3. Klik "OK"
   4. Der dukker muligvis en besked op om, at disse ikke findes på det valgte sprog. Vælg derfor "English" under "Sprog".
   5. De to drivere kan nu hentes under overskriften "Printer Drivers". Der er tale om disse to:
       LPR printer driver (deb package)		
       CUPSwrapper printer driver (deb package)
  
  3. Ved kørsel af dette script opretter Brother's installationsfil automatisk printeren som en USB-enhed, med modelnavnet som navnet på printeren. 
      Dvs. eksempelvis "HDLL8260CDW".
      Hvis printeren i stedet er forbundet via netværk - eller hvis du ønsker et andet navn til printeren -  kan du sætte hak, og så bliver den fjernet.
      I så fald skal du efterfølgende køre det normale "Tilføj netværksprinter"-script. 
      Vi foreslår at skrive/vælge "socket" som protokol:
      https://os2borgerpc-admin.magenta.dk/scripts/760/