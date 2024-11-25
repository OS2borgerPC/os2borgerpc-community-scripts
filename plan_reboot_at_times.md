---
title: "System - Planlæg daglige genstarter"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/plan_reboot_at_times.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Tidspunkter"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Dette script indstiller en OS2borgerPC eller OS2borgerPC Kiosk til at genstarte dagligt på nogle valgte tidspunkter.

BEMÆRK: Scriptet bruger maskinens interne ur til at afgøre, hvornår der skal genstartes.
Hvis maskinens ur går forkert, vil der også blive genstartet på de forkerte tidspunkter.

På en almindelig OS2borgerPC vil der blive vist en advarsel, 5 minutter før maskinen genstarter.
Kiosk-maskiner understøtter ikke at vise disse advarsler, da de ikke har et almindeligt UI.

Scriptet tager to parametre:

Aktiver? - Sæt hak i tjekboksen for at indstille maskinen til at genstarte på de valgte tidspunkter.
Lad tjekboksen stå tom for at fjerne alle planlagte genstartstidspunkter.

Tidspunkter - De komma-separerede tidspunkter, hvor maskinen skal genstarte. 
Formatet skal være "12:30, 14:00, 17:34" eller "12:30,14:00,17:34" (begge uden citationstegn)
Der kan vælges et vilkårligt antal tidspunkter.
Værdien af denne parameter har kun betydning, hvis der sættes hak i Aktiver?-afkrydsningsfeltet.