---
title: "Vis liste"
parent: "Printer"
source: /assets/os2borgerpc-scripts/os2borgerpc/printer/printer_list.sh
parameters:
  - name: "Vis forkortet oversigt"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Vis liste over alle printere - både installere og de, der identificeres på netværket.
Bemærk at der kan være tilfælde hvor maskinen ikke identificerer og viser printeren, selvom den faktisk er tilgængelig, og kan tilføjes.

Fjern hakket fra "Vis forkortet oversigt" hvis du ønsker mere detaljeret info om tilgængelige printere.

Kig i jobkørslens "log" for at se resultatet.

Dette script er blevet testet og virker på Ubuntu 22.04.