---
title: "System - GRUB: Skift kodeord"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/grub_set_password.py
parameters:
  - name: "Adgangskode"
    type: "password"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script vil gøre at alle GRUB-menuerne på nær Ubuntu vil kræve en adgangskode for brugeren superuser. 
GRUB er den "Bootloader" som OS2borgerPC og Ubuntu benytter som standard. Den er ansvarlig for at starte operativsystemet.

Hvis du forsøger at redigere i indstillingerne til GRUB vil den også bede om brugernavn, som er "superuser".

Bemærk: Dette script køres automatisk under installationen, hvor der genereres et tilfældigt kodeord, så menuerne er beskyttet som standard. Hvis alt du ønsker er at sikre GRUB, er det derfor ikke nødvendigt at køre. Men hvis du gerne selv vil have adgang til at kunne gå ind at redigere GRUB under opstart kan du køre dette script.

Det er vigtigt at man afprøver scriptet på en enkelt borgerpc før man ruller det ud på dem alle sammen.

Det er også vigtigt at man husker det kodeord man sætter på GRUB.
Det er dog muligt at ændre det igen hvis man glemmer kodeordet. 

*Note: GRUB (og GRUB2) er kort sagt en "bootloader", ligesom BOOTMGR og NTLDR i Windows. 
           Du kan læse nærmere om den her: https://help.ubuntu.com/community/Grub2

Dette script er blevet testet og virker på Ubuntu 22.04.