---
title: "Juster adgang til Indstillinger for Borger"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/adjust_settings_access.sh
parameters:
  - name: "Giv adgang til Indstillinger"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
SIKKERHEDSMÆSSIGE OVERVEJEJELSER:
Dette script låser ned eller op for adgang til Indstillinger.

Hvis borgere gives adgang til indstillinger, vil ændringer de foretager dog *generelt* stadig nulstilles efter logud. Det har dog vist sig, der kan være enkelte undtagelser: 
Indstillinger -> Privatliv -> Tjek af forbindelse
...kan ændres permanent!

Det mest nedlåste er, hvis borgere ikke har adgang til indstillinger, hvilket er standardindstillingen på nyere images (3.1.0 og nyere images).
Vi FRARÅDER pga. ovenstående at Borger gives adgang til Indstillinger.

BESKRIVELSE:

Sæt hak: Borger har adgang til Indstillinger
Intet hak: Borger har IKKE adgang til Indstillinger

Dette script påvirker kun Borger-kontoen - superuser har altid adgang til Indstillinger, men superusers ændringer i Indstillinger påvirker ikke Borger - eller omvendt.

Dette script er blevet testet og virker som udgangspunkt på Ubuntu 22.04. Hvis man klikkede "ja" til Ubuntus opgraderings-popup inden vi fjernede den, kan maskinen dog være endt i en tilstand, hvor dette script ikke har den ønskede effekt. Dette problem løses af scriptet "22.04 opgradering - Reparer tidlig opgradering".