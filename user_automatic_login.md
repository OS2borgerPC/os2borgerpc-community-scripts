---
title: "Automatisk borgerlogin til/fra"
parent: "Login"
source: os2borgerpc-scripts/os2borgerpc/login/user_automatic_login.sh
parameters:
  - name: "Aktiver automatisk borgerlogin"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Hvis ikke-automatisk login: Borger skal indtaste kodeord"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Skift mellem automatisk login for publikum (Borger) eller ej.

Automatisk login er som standard slået TIL på publikums-PC'er.  

Hvis man slår det FRA, og vælger at Borger skal indtaste kodeord ved login, skal man bruge scriptet "Skift kodeord for Borger" til at sætte et kendt kodeord for publikumsbrugeren.

Scriptet tager oftest først effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
  Aktiver automatisk borgerlogin:
    Sæt hak: Slår automatisk borgerlogin til
    Lad stå tom: Slår automatisk borgerlogin fra
  Borger skal indtaste kodeord:
     Dette parameter har kun effekt, hvis hak er udeladt i første parameter.
     Sæt hak: Borger skal indtaste kodeord for at logge ind
     Lad stå tom: Borger logger ind ved at trykke på login-knappen, uden kodeord