---
title: "System - Luk ned og vågn op dagligt"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/shutdown_and_wakeup.sh
parameters:
  - name: "Timer"
    type: "string"
    default: null
    mandatory: true
  - name: "Minutter"
    type: "int"
    default: null
    mandatory: true
  - name: "Timer til opvågning"
    type: "int"
    default: null
    mandatory: true
  - name: "Tilstand (off/mem/disk/standby/no/on/disable/show)"
    type: "string"
    default: null
    mandatory: false
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Dette script sætter computeren til at lukke ned og vågne op på det samme tidspunkt hver dag.

Som argumenter tager scriptet: 
1. Det timetal for hvornår, maskinen skal lukke NED
2. Det minuttal for hvornår, maskinen skal lukke NED
    Dvs. de første to parametre til sammen afgører præcist hvornår - eksempelvis 16 og 30 vil betyde: 16:30
3. Det antal timer efter nedlukning, hvor maskinen skal starte.
    Eksempel: Nedlukningstidspunktet er 16:30, og tredje parameter sættes til 14, så vil maskinen starte op 06:30.
4. Tilstand - vi anbefaler at afprøve "off" først, da det er den mest strømbesparende.
   Se nærmere info her: https://linux.die.net/man/8/rtcwake
   Hvis parametret udelades svarer det også til at skrive "off".

Det er muligt at angive "--off" (uden citationstegn) som første parameter og 0 som de næste tre parametre. Dette standser den daglige nedlukning.

BEMÆRK:
Hvis I selv eller Borger lukker maskinen manuelt, vil den IKKE vågne op. Den SKAL lukkes ned af dette script, da den derved lukkes af kommandoen "rtcwake", som også er den proces, der vækker maskinen op.
Derfor anbefaler vi at kombinere dette med scriptet "Desktop - Fjern Luk Ned, Genstart og Hviletilstand fra sessionmenuen og blokér for nedlukning via systempolitik", så maskinen ikke længere kan lukkes fra menuen, men kun via tryk på knap, hive strømstikket eller via scripts dertil fra adminsitet, såsom "System - Luk computeren NU".

Dette script er blevet testet og virker på Ubuntu 22.04.