---
title: "Skift baggrundsbillede på skrivebordet"
parent: "Desktop"
source: os2borgerpc-scripts/os2borgerpc/desktop/dconf_desktop_background.sh
parameters:
  - name: "Baggrundsbillede"
    type: "file"
    default: null
    mandatory: true
  - name: "Billedeindstillinger (se muligheder i beskrivelsen)"
    type: "string"
    default: "zoom"
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script skifter baggrundsbillede på skrivebordet for Borger på en OS2borgerPC.
Borger behøver ikke at logge ud før baggrundsbillede skifter.
Efterfølgende vil det ikke være tilladt for Borger at skifte baggrundsbilledet, men det kan stadig ændres fra adminsitet.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
  
  1. Baggrundsbillede:
      Her vælger du det billede, der skal anvendes som baggrundsbillede.
      Undgå at bruge æøå i filnavnet, da det kan forårsage problemer.
  2. Billedeindstillinger
      De indstillinger der skal være for billedet. Mulighederne er:
      - zoom (standardindstillingen): Baggrunden zoomes ind eller ud for at passe til skærmens størrelse. Der zoomes indtil billedet fylder hele skærmen, som potentielt kan betyde at kanterne af billedet ikke ses.
      - stretched: Baggrunden strækkes for at dække hele skærmen uden hensyntagen til proportioner.
      - centered: Baggrunden placeres centralt på skærmen uden nogen form for tilpasning.
      - scaled: Baggrunden tilpasses skærmens størrelse, bevarende dens proportioner. Der skaleres indtil billedet når ud til den ene kant, så der kan potentielt være en sort bjælke hvis billedets proportioner ikke passer til skærmen.
      - wallpaper: Baggrunden anvendes som tapet, gentagende eller fyldende hele skærmen.
      - none: Der er ingen baggrund, skærmen viser en ensfarvet baggrund eller transparent baggrund.

