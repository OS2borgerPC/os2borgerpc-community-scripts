---
title: "Dupliker skærm fremfor udvid"
parent: "System"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/duplicate_monitors_xdotool_test.sh
parameters:
  - name: "Skift til duplikeret skærm"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script gør det muligt at skifte de tilsluttede skærme til at vise samme indhold (duplikeret), fremfor øvrige skærme bliver til separate skrivebord (udvidet). 
Metoden scriptet bruger, er en automatiseret indtasting af genvejstasten Super-p. ("Super" er et andet navn for Windows-tasten.)

Hvis muligt, anbefaler vi i stedet at I bruger scriptet "Genvej til at kopiere skærmindstillinger fra superuser til Borger". Fordelen ved dét er det muliggører mange andre ændringer i skærmindstillinger samt at det ikke er afhængigt af genvejsindtastning som potentielt kan gå galt. Ulempen er at det kræver manuelt arbejde per BorgerPC.

Siden metoden er afhængig af genvejsindtastning, vil skiftet potentielt fejle, hvis Borger samtidig trykker på andre taster på tastaturet.

BEMÆRK:
-Dette script kombineret med "Genvej til at kopiere skærmindstillinger fra superuser" kan give problemer, da skiftet via genvejsindtastningen ændrer opløsningen tilbage til skærmens standardopløsning. Vi foreslår derfor ENTEN at bruge dette script eller det andet, og ikke begge samtidig.