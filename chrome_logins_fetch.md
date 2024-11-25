---
title: "Chrome:  Gemte logins - 2. Hent logininformationer fra maskine"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_logins_fetch.sh
parameters: []
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script er skrevet til at fungere sammen med to andre scripts, i følgende rækkefølge:
1. Chrome: Slå password manager fra/til
2. Chrome: Hent logininformationer fra maskine
3. Chrome: Tilføj gemte logininformationer

Når de relevante brugernavne og koder er indtastet på maskinen, skal de hentes ud fra maskinen.
Dette kan gøres manuelt, eller via dette script.

FÅ FAT I FILEN MANUELT:
Filen ligger på følgende sti og har navnet "Login Data":
"/home/user/.config/google-chrome/Default/Login Data

Den kan kopieres ud via filmanager/nautilus, eller fra terminalen, og kan så kopieres til et USB-stik, eller uploades et sted.
For at I kan se mappen .config, som er en skjult mappe, skal I slå visning af skjulte filer/mapper til i filmanageren.

FÅ FAT I FILEN VIA DETTE SCRIPT:
Adminsitet læser filen og skriver den til job-loggen. Da der er tale om en SQL-database kan den indeholde specialtegn, så for at adminsitet kan håndtere og vise outputtet korrekt, konverteres det til base64.

For at gemme filen på en maskine i det rette format skal den derfor omkodes tilbage til sit "rigtige" format.
Enten kan I bede os om at gøre dette, eller også kan I gøre det på følgende vis i Linux fra terminalen:

1. Kopier præcist de linier/tegn der svarer til databasen ind i et tekstdokument (evt. kaldet base64logins.txt) og gem filen.
2. Åbn en terminal og kør følgende kommando på dette tekstdokument:
    $ base64 --decode base64logins.txt > Login Data
3. Kør evt. følgende kommando for at verificere, at filen identificeres som en sqlite-database:
    $ file "Login Data"

Hvis du har gjort det korrekt, burde Login Data nu være en sqlite-fil, som så kan bruges med scriptet "Chrome: Tilføj gemte logininformationer".