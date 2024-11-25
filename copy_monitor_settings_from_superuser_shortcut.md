---
title: "Genvej til at kopiere skærmindstillinger fra superuser til Borger"
parent: "Desktop"
source: /assets/os2borgerpc-scripts/os2borgerpc/desktop/copy_monitor_settings_from_superuser_shortcut.sh
parameters:
  - name: "Opret genvej"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Anvendelse:
1. Kør dette script på computeren
2. Login som superuser
3. Åbn programmet "Indstillinger" fra programlisten
4. Gå ind under menupunktet "Skærme"
5. Sæt de ønskede skærmindstillinger 
6. Tryk på den nyoprettede genvej på skrivebordet, til at kopiere de ændrede skærmindstillinger over til Borger

Dette kan eksempelvis bruges til at skifte flere skærme over fra "udvidet skærm" til "duplikeret", til at skifte opløsninger eller opdateringsfrekvenser.

Hvis scriptet køres uden "hak" i parametret vil genvejen fjernes, og skærmindstillingerne for Borger vil blive nulstillet til standard.

BEMÆRK:
- Dette script kombineret med "Dupliker skærm fremfor udvid" kan give problemer, da skiftet via genvejsindtastningen ændrer opløsningen tilbage til skærmens standardopløsning. Vi foreslår derfor enten at bruge dette script eller det andet, og ikke begge samtidig.
- Skærmindstillingerne påvirker IKKE loginskærmen.
- Scriptet tager først effekt efter logud.