---
title: "Sæt bogmærker i bar"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_chromium_policy_bookmarks.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Navn på overmappen til bogmærkerne"
    type: "string"
    default: null
    mandatory: false
  - name: "Tillad Borger at tilføje/redigere bogmærker"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Bogmærker (i JSON-format)"
    type: "file"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Gør det muligt at sætte bogmærker i Chrome og Chromium via upload af en fil i JSON-format: https://en.wikipedia.org/wiki/JSON

Disse bliver sat i bogmærkebaren i toppen, som samtidig gøres synlig.

Man kan også vælge at slå det fra, så Borger ikke kan sætte nye bogmærker. Eventuelle bogmærker Borger sætter, bliver dog uanset slettet efter logud.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Sæt hak for at sætte bogmærker - lad stå tom for at slette alle bogmærkeindstillingerne.
2. Navn du ønsker den øverste mappe, der indeholder bogmærkerne, skal have
3. Om Borger skal have rettighed til at redigere/tilføje bogmærker. Bemærk at selv hvis det tillades, så vil de slettes efter logud.
4. Selve bogmærkerne, som er en JSON-fil til upload.

JSON-filen har et bestemt format som skal følges - her er et eksempel på, hvordan den kan se ud:
{
  "name": "DuckDuckGo",
  "url": "duckduckgo.com"
},
{
  "name": "Undermappe 1",
  "children": [
    {
      "name":  "OS2",
      "url": "os2.eu"
    },
    {
      "name":  "Magenta",
      "url": "magenta.dk"
    }
  ]
}

I eksemplet er der kun én undermappe, men der kan reelt set være så mange undermapper, som du ønsker.
Nærmere info om strukturen af JSON-dataen fra Google (Chrome-udviklerne) selv:
https://chromeenterprise.google/policies/#ManagedBookmarks

