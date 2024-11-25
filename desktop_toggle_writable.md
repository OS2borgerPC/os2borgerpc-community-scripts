---
title: "Slå skriverettigheder for skrivebord fra/til"
parent: "Sikkerhed"
source: os2borgerpc-scripts/os2borgerpc/sikkerhed/desktop_toggle_writable.sh
parameters:
  - name: "Aktivér? (hak: fjern skriverettighed / udelad hak: giv skriverettighed)"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Slår skriverettigheder for skrivebordet til og fra for Borger-brugeren.

SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script er designet til at beskytte mod phishing - dvs. nærmere specifikt at en person modificerer en genvej på skrivebordet til at pege over på eks. en Mit ID-lignende side, som i stedet opsnapper loginoplysninger og sender dem til en tredjepart. I OS2borgerPC 4.0.0 er dette muligt. Som skrevet længere oppe, så bliver disse ændringer dog uanset nulstillet efter logud, så det er primært et problem, hvis man ikke har automatisk logud ved inaktivitet, eller hvis angriberen skulle finde en måde at holde gang i aktiviteten på maskinen på afstand, så den ikke logger ud.

Vi anbefaler pba. ovenstående ikke at slå dem til.

BESKRIVELSE:
I OS2borgerPC 5.0.0 og fremefter er det indbygget, at skriverettighederne til skrivebordet er fjernet.

Dette script er blevet testet og virker på Ubuntu 22.04.

Udviklet og testet i samarbejde med Aarhus kommune.

## Parametre
  1. Aktivér?: 
     Sæt hak: brugeren har IKKE rettighed til at lægge filer på skrivebordet (standard)
     Lad stå tom: brugeren har rettighed til at lægge filer på skrivebordet

