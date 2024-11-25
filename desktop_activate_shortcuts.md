---
title: "Desktop - Aktiver genveje"
parent: "Udfases"
source: /assets/os2borgerpc-scripts/os2borgerpc/udfases/desktop_activate_shortcuts.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script er i kategorien "Udfases", da det er indbygget i image 5.0.0 og senere. Dvs. det er ikke længere nødvendigt at køre i nyere installationer, såfremt man bruger nyeste image.

"Aktiverer" genveje på skrivebordet.

Inden dette script køres kan man godt tilføje en genvej, men det rette ikon vil ikke dukke op, og programmet vil i stedet blive åbnet i et tekstredigeringsprogram.

Der skal logges ud og ind igen - eller alternativt genstartes - før det tager effekt.
Scriptet skal kun køres én gang - så virker genveje der er tilføjet til skrivebordet både før og efter.

Dette script er blevet testet og virker på Ubuntu 22.04.