---
title: "Tjek om maskinen har adgang til vores filparameter-s"
parent: "Fejlfinding"
source: /assets/os2borgerpc-scripts/common/fejlfinding/verify_access_to_bpc_parameter_storage.sh
parameters:
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Vores fil-parameter-server har følgende URL:
https://os2borgerpc-media.magenta.dk

...og det er fra denne at alle FILPARAMETRE til scripts hentes, såsom billedefilen til baggrundsbillede-scriptet.

Hvorfor er det relevant? Fordi nogle kan have problemer med firewalls, der skal konfigureres til at tillade dette domæne.