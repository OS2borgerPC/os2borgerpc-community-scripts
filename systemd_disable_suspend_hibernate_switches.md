---
title: "System - Slå dvale- og hviletilstand fra"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/systemd_disable_suspend_hibernate_switches.sh
parameters:
  - name: "Slå dvale- og hviletilstand fra?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "BorgerPC"
---

## Beskrivelse
Slår dvale og hviletilstand fra. Dette forhindrer også en laptop i at gå i dvale automatisk når skærmen bliver slået ned.

BEMÆRK: Dette script er ikke til at fjerne effekten af "Aktiver dvale efter X minutters inaktivitet med besked". Kør i stedet det nævnte script uden hak i "Aktiver"-parametret.

Dette script er primært relevant hvis du oplever der opstår problemer på en computer ifm. skiftet til og fra disse tilstande.
Fra OS2borgerPC 5.0.0 har Borger ikke længere rettighed til at sætte maskinen i hviletilstand. Det kan dog slås fra/til via et script, hvis det stadig ønskes, eller hvis man kører en tidligere version og ønsker det slået fra.

INPUTPARETRE:

1. Slå dvale- og hviletilstand fra?:
    Sæt hak for at slå dvale- og hviletilstand fra
    Lad stå tom for at slå dvale og hviletilstand til (standardindstillingen)