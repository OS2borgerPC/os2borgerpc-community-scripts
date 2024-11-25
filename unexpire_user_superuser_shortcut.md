---
title: "Sikkerhed: Genvej til at låse Borger-konto op fra superusers skrivebord"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/unexpire_user_superuser_shortcut.sh
parameters:
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script opretter en genvej på superusers skrivebord, der låser op for Borger-kontoen, efter den er blevet låst af USB-overvågningsscriptet, eller af scriptet, der blokerer for login ved hård nedlukning.

Dette gør det muligt for noget personale at låse Borgerkontoen op, uden de behøver adgang til adminsitet.

Processen for oplåsning er følgende:
1. Log ind som superuser
2. Dobbeltklik på genvejen - eller tilsvarende
3. Indtast superusers kodeord i terminalen der åbner op
4. Borger-kontoen er nu ikke længere låst

Fra adminsitet vil du også stadig kunne låse Borger op med det tilhørende script.