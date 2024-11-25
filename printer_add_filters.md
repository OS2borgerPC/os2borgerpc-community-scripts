---
title: "Tilføj Printer-filter-filer"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_add_filters.sh
parameters:
  - name: "CUPS filter fil 1"
    type: "file"
    default: null
    mandatory: true
  - name: "CUPS filter fil 2 (valgfri)"
    type: "file"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Nogle printere kan kræve, at du installerer/tilføjer nogle såkaldte "filter"-filer i CUPS, for at printeren virker korrekt.

Dette script kan bruges til at lægge op til 2 filter-filer ind i den relevante mappe ad gangen. Har du brug for flere filer til en given printer kan du køre scriptet flere gange, eller du kan skrive til os, og vi kan justere scriptet til at tage imod flere parametre.

Filparametrene er sat til at være valgfrie ud over det første.