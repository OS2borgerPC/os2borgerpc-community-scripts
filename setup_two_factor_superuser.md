---
title: "Totrinsbekræftelse for superuser"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/sikkerhed/setup_two_factor_superuser.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Sikkerhedsnøgle"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Slår tidsbaseret totrinsbekræftelse til for superuser, ved login på en OS2borgerPC eller en OS2borgerPC Kiosk-maskine.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Hvis der skulle være indsat en keylogger på maskinen, eller en angriber kigger over skulderen når der logges ind på superuser vil det forhindre angreb hvis totrinsbekræftelse for superuser er slået til, da kodeord til superuser i sig selv ikke er nok til at logge ind som superuser på maskinen.

BESKRIVELSE:
Gå først ind på siden "2FA på computere" i menuen til venstre her på adminsitet, for at se processen for at slå totrinsbekræftelse til.

Så snart du har genereret en sikkerhedsnøgle på ovenstående side, skal dette script køres med sikkerhedsnøgle som det andet parameter.

Fra næste login, vil der nu for superuser være et ekstra skridt i loginprocessen efter koden, hvor der skal indtastes totrins-koden.

Tager det ikke effekt øjeblikkeligt efter logud, foreslås en genstart af maskinen.

Det kan også være relevant at køre scriptet "Login - Ændr login-timeout", da det kan være svært at nå at indtaste kode og totrinsbekræftelse på de 10 sekunder der normalt går, før der logges automatisk ind på Borger-kontoen.

---------------

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Aktivér?: 
      Sæt kryds for at slå totrinsbekræftelse til
      Lad stå tom for at slå totrinsbekræftelse fra.
2: Sikkerhedsnøgle: Sikkerhedsnøglen totrinsbekræftelse-systemet internt har brug for. 
At bruge samme sikkerhedsnøgle for flere computere betyder, at du kan logge ind på flere computere med samme totrins-koder, fremfor hver computer skal tilføjes individuelt til din totrinsbekræftelse-app.


