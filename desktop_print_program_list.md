---
title: "Vis programliste"
parent: "Desktop"
source: /assets/os2borgerpc-scripts/os2borgerpc/desktop/desktop_print_program_list.sh
parameters:
  - name: "Sted"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Vis en liste af programmer på maskinen der enten er på skrivebordet, i menuen eller som er tilgængelige på maskinen.
Efterfølgende vil du på joblisten kunne klikke dig ind i script-outputtet, og se programmerne listet.

Formålet er at disse navne så kan bruges med "Desktop - Tilføj/fjern programgenvej i menu" eller "Desktop - Tilføj/fjern programgenvej på skrivebordet".

For nogle programmer vil navnene stå to gang alá "firefox_firefox" og "chromium_chromium" - disse programmer skal bare skrives en enkelt gang når de skrives som inputparametre til de ovennævnte scripts, dvs. "firefox" og "chromium".

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Hvilke programmer der skal listes:
   skrivebord: Skriv liste af programmer på skrivebordet.
   menu: Skriv liste af programmer i menuen.
   mulige: Skriv liste af tilgængelige programmer, som kan tilføjes til skrivebord eller menu.

