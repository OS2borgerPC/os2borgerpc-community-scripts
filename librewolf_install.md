---
title: "LibreWolf: Installér LibreWolf"
parent: "Browser"
source: scripts/librewolf_install.sh
parameters:
  - name: "Tillad DRM"
    type: "checkbox"
    default: true
    mandatory: true
compatibility:
  - "BorgerPC"
---

## Beskrivelse

Installerer LibreWolf og konfigurerer browserens policies.
LibreWolf er en Firefox-baseret browser med fokus på privatliv.
Startsiden sættes som standard til [https://www.borger.dk](https://www.borger.dk).
Startsiden kan ændres med `librewolf_startpages.sh`.

### Parametre

**Tillad DRM**
Tillader LibreWolf at afspille DRM-beskyttet indhold, f.eks. Spotify, Netflix, Disney+, mm.

Hvis DRM deaktiveres, kan browseren ikke afspille DRM-beskyttet indhold.
(Som standard, er DRM slået af på LibreWolf.)