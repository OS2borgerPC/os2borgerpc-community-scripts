---
title: "Log Borger ud efter X minutters inaktivitet med besked"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/inactivity_logout_after_time.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Antal MINUTTER til dialog bliver vist"
    type: "int"
    default: null
    mandatory: true
  - name: "Antal MINUTTER til brugeren bliver logget ud"
    type: "int"
    default: null
    mandatory: true
  - name: "Tekst som bliver vist i dialogboksen"
    type: "string"
    default: null
    mandatory: false
  - name: "Tekst som bliver vist på dialogboks knappen"
    type: "string"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Vis en advarsel efter et antal minutters inaktivitet - ved fortsat inaktivitet logges brugeren automatisk ud.
Dette script har til formål at sørge for at brugeren automatisk logges ud, hvis de skulle forlade maskinen uden selv at logge ud.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Mens en BorgerPC er logget ind kan der godt gemmes filer på den, nogle programmer vil huske besøgte webadresser på den, og en Borger kunne efterlade en maskine logget ind på deres E-Boks.
Automatisk logud er lavet til scenarier hvor Borger ikke husker selv at lukke/slette vigtige filer, eller bare logge ud. 
Så vil maskinen i så fald efter X antal tid selv sørge for det.

Vi anbefaler at genstarte efter kørsel, for at være sikker på, det har taget effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Scriptet tager 5 inputparametre:
1. Hvorvidt scriptet skal aktiveres. Sæt hak i tjekboksen for at aktivere scriptet. Lad tjekboksen stå tom for at deaktivere scriptet.
2. Antal MINUTTER computeren kan være inaktiv, før en advarsel vises.
3. Antal MINUTTER computeren kan være inaktiv, før den lukkes ned. 
    Det skal være længere tid end det første inputparameter, da advarslen ellers ikke vil blive set. Vi foreslår minimum 3 minutter længere.
4. Teksten der vises i inaktivitetsadvarslen. Hvis feltet efterlades tomt, bruges standardteksten "Du er inaktiv og bliver logget ud om kort tid..."
5. Teksten der vises på knappen i inaktivitetsadvarslen. Hvis feltet efterlades tomt, bruges standardteksten "OK"

Eksempel:
Med inputparametrene 5 og 10 vil der vises en advarsel efter 5 minutter, og hvis inaktiviteten så fortsætter 5 minutter derefter, vil brugeren blive logget af.

Hvis du ønsker linieskift i teksten, kan det gøres ved at skrive \n således:
Linie1\nLinie2

