---
title: "System - GRUB: Gør menuen tilgængelig"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/grub_menu_make_accessible.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
GRUB er Ubuntus standard bootloader. Fra denne kan man eksempelvis vælge forskellige kerneversioner og justere i indstllinger til kernen eller drivere.

Disse ændringer i indstillinger eller den valgte kerneversion er MIDLERTIDIGE. Dvs. efter næste genstart, vil maskinen gå tilbage til standard, som er at boote den nyeste kerneversion med de sædvanlige indstillinger.

Normalt er denne menu skjult, og også password beskyttet.
Dette script gør menuen synlig. For at dette script giver mening, skal du samtidig køre scriptet "GRUB: Skift kodeord", da adgangskoden som udgangspunkt efter installation er tilfældigt genereret fra maskine til maskine, af sikkerhedsmæssige grunde.