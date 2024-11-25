---
title: "Genvej til program fra skrivebordet"
parent: "Desktop"
source: os2borgerpc-scripts/os2borgerpc/desktop/desktop_program_shortcut.sh
parameters:
  - name: "Tilføj programmet?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Program"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Tilføjer/Fjerner en genvej til/fra et program på skrivebordet.

Log ud efter kørsel.

BEMÆRK: Før genveje på skrivebordet fungerer, skal scriptet "Desktop - Aktiver genveje" også være kørt. Dette script er dog allerede indbygget i de nyere images.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tilføj programmet:
  Sæt hak: Programmet tilføjes til Skrivebordet
  Fjern hak: Programmet fjernes fra Skrivebordet (hvis det ligger der)
2: Programnavn: Det program du ønsker at tilføje eller slette fra skrivebordet. Programnavnet skal matche navnet på en genvej til et installeret program.
    Navnet er næsten altid med små bogstaver, og mellemrum erstattet af bindestreg.
    Eksempler: firefox, google-chrome, microsoft-edge, simple-scan, yelp, libreoffice-impress, libreoffice-writer, libreoffice-calc

Hvis du ikke kender program-navnet præcist, kan du bruge scriptet "Desktop - Vis programliste".

