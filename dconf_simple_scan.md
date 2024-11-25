---
title: "Sæt indstillinger for Dokumentskanner (simple scan)"
parent: "Skanner"
source: /assets/os2borgerpc-scripts/os2borgerpc/skanner/dconf_simple_scan.sh
parameters:
  - name: "Papirstørrelse"
    type: "text_field"
    default: "A3,A4,A5,A6,Auto"
    mandatory: false
  - name: "Billedeopløsning (DPI)"
    type: "text_field"
    default: "300,75,150,200,600,1200,2400"
    mandatory: false
  - name: "Tekstopløsning (DPI)"
    type: "text_field"
    default: "150,75,200,300,600,1200,2400"
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script sætter standard-indstillingerne for sidestørrelse, kvaliteten for billedopløsning og tekstopløsning for Dokumentskanner, også kaldet simple scan. 

Bemærk: Dokumentskanner skal genstartes, før ændringerne i indstillinger tager effekt.