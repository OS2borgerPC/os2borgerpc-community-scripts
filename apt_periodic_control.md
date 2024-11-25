---
title: "System - Aktiver automatiske opdateringer fra Ubuntu"
parent: "System"
source: os2borgerpc-scripts/common/system/apt_periodic_control.sh
parameters:
  - name: "Aktiver generelle opdateringer (sikkerhed/alt/falsk)"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script aktiverer automatiske opdateringer fra Ubuntu.

Når du slår automatiske opdateringer til skal du vælge om du både vil have sikkerhedsopdateringer og generelle opdateringer slået til, eller blot sikkerhedsopdateringer.

Hvis du ønsker at det kun er sikkerhedsopdateringer der skal slåes til skal du tilføje parametren "sikkerhed". Hvis det derimod er både sikkerhedsopdateringer og generelle opdateringer skal du tilføje parametren "alt".

Hvis du ønsker at slå alle automatiske opdateringer fra (anbefales generelt ikke, men det kan være relevant som test), kan du køre scriptet med parametret "falsk".

Vær opmærksom på at med de nyeste os2borgerpc-images er sikkerhedsopdateringer allerede slået til.
Magenta anbefaler at kun sikkerhedsopdateringer er slået til. Især hvis man gør brug af Google Chrome.

Info om de to opdateringsmuligheder:

Sikkerhedsopdateringer:
De vigtigste opdateringer, som retter sårbarheder i systemet og dets programmer.

Generelle opdateringer:
Retter fejl og tilføjer nogle gange ny funktionalitet i tilføjelsesprogrammerne.

Info omkring Ubuntus håndtering af automatiske opdateringer:
- Disse opdateringer hentes og installeres usynligt i baggrunden, uanset om maskinen er i brug eller ej.
- Maskinen vil tjekke efter opdateringer to gange dagligt, på tilfældige tidspunkter.
Hvis den missede en opdatering dagen før, fordi den var lukket ned på et af dens planlagte opdateringstidspunkter, vil den tjekke kort efter opstart.

Dette script er blevet testet og virker på Ubuntu 22.04.