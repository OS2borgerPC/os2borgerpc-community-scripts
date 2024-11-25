---
title: "Vedvarende mappe på skrivebordet"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/desktop_persistent_dir.sh
parameters:
  - name: "Tilføj?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Navn til mappen"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Bemærk: Dette script SVÆKKER sikkerheden på en OS2borgerPC!  

Standardindstillingen er at alt slettes, og dette script laver så en mappe der er undtaget herfra. Men hvis man vil anvende en BorgerPC som en privat computer, eksempelvis ifm. kurser, arbejde eller deslige, kan det være brugbart.

Opretter en mappe på skrivebordet, med valgfrit navn, som forbliver efter logud/genstart/nedlukning, hvor brugerne kan gemme filer.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tilføj genvej?: Sæt hak for at tilføje mappen med det givne NAVN. Udelad hak for at fjerne mappen med det givne NAVN.
2: NAVNET på mappen som skal tilføjes eller fjernes.

