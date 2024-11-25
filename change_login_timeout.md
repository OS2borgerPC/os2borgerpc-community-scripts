---
title: "Ændr login-timeout"
parent: "Login"
source: os2borgerpc-scripts/os2borgerpc/login/change_login_timeout.sh
parameters:
  - name: "Antal sekunder"
    type: "int"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Scriptet ændrer logintimeout til et valgfrit antal sekunder, givet som første parameter.
Standardindstillingen er pt. 10 sekunder.

Hvis du ønsker nærmest øjeblikkelig login, kan den sættes til 2 sekunder. Tests har vist at den ikke kan nå at indlæse loginsiden hvis den sættes til 0, som kan betyde, at den slet ikke får logget ind, og forbliver på loginskærmen.

Scriptet tager oftest først effekt efter genstart.

Dette script antager, at automatisk login er slået til. Det er det som standard, men hvis det inden er blevet slået fra via scriptet "OS2borgerPC - Automatisk borgerlogin til/fra", vil dette script ikke have nogen effekt.

Hvis du ønsker at deaktivere automatisk login helt, kan det i stedet gøres med førnævnte script.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Antallet af sekunder der går, før der automatisk logges ind.



