---
title: "System - GRUB: Gør det muligt at boote alle kerneversioner uden brugernavn/kode"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/grub_allow_booting_non_default_kernel.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
Som udgangspunkt når man på en BorgerPC forsøger at boote en kerneversion andet end den nyeste, som er forvalgt, vil man blive bedt om at indtaste brugernavn og adgangskode. Dette script fjerner denne begrænsning.

Det er stadig låst ned for manuel redigering af boot-indstillingerne fra GRUB-menuen.