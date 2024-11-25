---
title: "Vis tilgængelige skannere"
parent: "Skanner"
source: /assets/os2borgerpc-scripts/os2borgerpc/skanner/list_scanners.sh
parameters:
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Hvis der er en eller flere skannere tilgængelige via. usb og/eller netværk, så udskrives informationer om disse under pågældende jobs' log output.

Eksempelvis får du output som dette:

device `hpaio:/net/HP_Color_LaserJet_MFP_M477fdw?ip=<IP_ADRESSE_HER>' is a Hewlett-Packard HP_Color_LaserJet_MFP_M477fdw all-in-one
device `hpaio:/net/color_laserjet_mfp_m477fdw?ip=<IP_ADRESSE_HER>&queue=false' is a Hewlett-Packard color_laserjet_mfp_m477fdw all-in-one
device `hpaio:/net/color_laserjet_mfp_m477fdw?ip=<IP_ADRESSE_HER>&queue=false' is a Hewlett-Packard color_laserjet_mfp_m477fdw all-in-one
device `airscan:e0:HP Color LaserJet MFP M477fdw (A9E0F5) - 2. sal' is a eSCL HP Color LaserJet MFP M477fdw (A9E0F5) - 2. sal ip=<IP_ADRESSE>
device `airscan:e1:HP Color LaserJet MFP M477fdw (A9F0F8)' is a eSCL HP Color LaserJet MFP M477fdw (A9F0F8) ip=<IP_ADRESSE>

...og delen "hpaio:/net/HP_Color_LaserJet_MFP_M477fdw?ip=<IP_ADRESSE_HER>" er så det navn/den adresse man skal bruge for at sætte den første på listen som standard-skanner. Dette er dog kun nødvendigt, hvis det ikke er den rette skanner, der er forvalgt, når du åbner "Dokumentskanner".