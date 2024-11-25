---
title: "Skjul knap til valg af skrivebordsmiljø"
parent: "Login"
source: /assets/os2borgerpc-scripts/os2borgerpc/login/lightdm_hide_desktop_env_select.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script kan bruges til at skjule knappen til valg af skrivebordsmiljø på login-skærmen.

BEMÆRK: De to muligheder, som normalt er tilgængelige, er funktionelt det samme, så det gør ingen forskel, hvilken man vælger.
Af samme grund har det ingen funktionel betydning, om knappen er synlig eller ej.
Dette script er således kun relevant, hvis man tænker, at knappen kan skabe forvirring.

## Parametre

Aktiver? - Sæt hak i afkrydsningsfeltet for at skjule knappen.
Lad afkrydsningsfeltet være tomt for at vise knappen igen.

