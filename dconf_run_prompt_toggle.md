---
title: "Juster adgang til kør prompt (ALT-F2)"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/dconf_run_prompt_toggle.sh
parameters:
  - name: "Slå kør prompt fra"
    type: "boolean"
    default: null
    mandatory: false
included_in_image: true
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true


---

## Beskrivelse
Slår "kør"-prompten (ALT-F2) fra eller til.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script fjerner genvejen til "Kør" prompten, hvorfra man kan køre kommandoer.
Dette script har ikke den store sikkerhedsmæssige betydning, medmindre man samtidig kører vores script til at blokere for terminalen, da man fra terminalen kan gøre det samme og mere.

Grundlæggende mener vi ikke, at dette er et kritisk script rent sikkerhedsmæssigt, af den årsag, at HVIS det skulle vise sig der er en kommando eller række af kommandoer gør det muligt at udnytte et tænkt sikkerhedshul på en BorgerPC, så er det nærmere det kommandoerne gør, der bør sikres/forhindres. Dvs. det egentlige sikkerhedshul ligger i det kommandoerne har rettigheder til at kunne, ikke i selve kommandoerne.

BESKRIVELSE:
Bemærk at man bagefter at det slås fra, stadig godt kan gå ind og forsøge at sætte en genvejstast til "kør kommando", 
men selvom genvejstast-kombinationen nu vises, som om den var sat, virker den i praksis ikke.

Dette script er indbygget i OS2borgerPC image 5.0.0 og fremover.

Dette script er blevet testet og virker på Ubuntu 22.04.

Udviklet og testet i samarbejde med Aarhus kommune.

## Parametre
  Slå kør prompt fra : 
  - Sæt hak for at slå kør prompten fra
  - Lad stå tom for at slå kør prompten til