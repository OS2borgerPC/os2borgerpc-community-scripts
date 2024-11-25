---
title: "Samba - Tjek forbindelse"
parent: "Fejlfinding"
source: /assets/os2borgerpc-scripts/common/fejlfinding/debug_samba_test_connection.sh
parameters:
  - name: "IP-adresse på BorgerPC'en der kører Samba"
    type: "string"
    default: null
    mandatory: true
  - name: "Kodeord til Samba"
    type: "password"
    default: null
    mandatory: true
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Dette script kan bruges ifm. fejlfinding af Samba-forbindelse, hvis man har aktiveret den delte mappe via Samba med det relevante script. (Samba er ikke installeret og aktiveret som standard.)

Specifikt kan dette script bruges til at teste Samba-forbindelsen fra én BorgerPC til en anden, for at se om netværket tillader forbindelsen ml. dem. Reelt set er det betydningsfulde dog om skanneren kan få forbindelse til BorgerPC'erne, og ikke om der er forbindelse internt, men dét scenarie er ikke lige til at teste via et script, siden BorgerPC'en er serveren og skanneren er klienten, der skal initiere forbindelsen.