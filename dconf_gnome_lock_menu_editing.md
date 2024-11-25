---
title: "Lås menu"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/dconf_gnome_lock_menu_editing.sh
parameters:
  - name: "Aktivér"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Låser venstremenuen så Borger ikke kan redigere i den.

Den nulstilles uanset efter login, så det er nærmere hvis man også vil forhindre ændring af menuen i løbet af en login-session.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script er designet til at beskytte mod phishing - dvs. nærmere specifikt at en person modificerer en genvej i menuen til at pege over på eks. en Mit ID-lignende side,
som i stedet opsnapper loginoplysninger og sender dem til en tredjepart. I OS2borgerPC 4.0.0 er dette muligt. Som skrevet længere oppe, så bliver disse ændringer dog uanset nulstillet efter logud, så det er primært et problem, hvis man ikke har automatisk logud ved inaktivitet, eller hvis angriberen skulle finde en måde at holde gang i aktiviteten på maskinen på afstand, så den ikke logger ud.

BESKRIVELSE:
Dette script er indbygget i OS2borgerPC 5.0.0 og fremefter.

---------------

Dette script er blevet testet og virker på Ubuntu 22.04.