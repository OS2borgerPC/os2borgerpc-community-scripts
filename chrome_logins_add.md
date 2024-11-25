---
title: "Chrome: Gemte logins - 3. Tilføj gemte logininformationer"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_logins_add.sh
parameters:
  - name: "Login Data-fil"
    type: "file"
    default: null
    mandatory: true
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script er skrevet til at fungere sammen med to andre scripts, i følgende rækkefølge:
1. Chrome: Slå password manager fra/til
2. Chrome: Hent logininformationer fra maskine
3. Chrome: Tilføj gemte logininformationer

Dette script kan tilføje logininformationer til Chrome.
Scriptet forventer en password manager-fil som parameter (denne fil kaldes "Login Data" af Chrome).

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Bemærk at hvis en Borger er teknisk sindet, kan vedkommende potentielt finde en måde at læse disse loginoplysninger på!

Bemærk også at dette script slår "ForceEphemeral"-politikken, som vi normalt har slået til, fra. Politikkens funktion er normalt at give brugeren en midlertidig browser-profil, som slettes når browseren lukkes ned. Denne funktionen har nemlig vist sige at give problemer ift. at tilføje login-data. Meget browser-data slettes dog stadig løbende undervejs, og ALT slettes når der logges ud af Borger.

Dette script bruges sammen med "Chrome - Slå password manager fra/til"