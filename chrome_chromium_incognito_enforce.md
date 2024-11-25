---
title: "Sæt Inkognito-indstillinger"
parent: "Browser"
source: /assets/os2borgerpc-scripts/os2borgerpc/browser/chrome_chromium_incognito_enforce.sh
summary: |
  Chrome giver mulighed for at åbne et "Incognito vindue". Med dette script kan slå muligheden til/fra eller tvinge browseren til altid at køre i incognito-tilstand."
parameters:
  - name: "AKTIVER"
    type: "boolean"
    default: null
    mandatory: false
  - name: "INCOGNITO_MODE"
    type: "int"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Scriptet benytter Chrome Policy'en "Incognito mode availability".

BEMÆRK: 
- Hvis dette script køres vil startsiden ikke længere indlæses, og i stedet vil en infoside omkring gæstetilstand blive vist.
- Browserudvidelser, selv sat via scripts, vil ikke længere være aktive. Dvs. udvidelses-scriptet har ikke længere en effekt.

Ovenstående begrænsninger er ikke aktive valg fra vores side, men det er sådan de har valgt, det skal være, fra Chrome-udviklernes side.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre

AKTIVER (Afkrydsningsfelt)

INCOGNITO_MODE (Heltal / Integer)

0 = Incognito mode available (Standardindstillingen: Browseren er ikke i inkognito som standard, men det er muligt at åbne et vindue i tilstanden) 
1 = Incognito mode disabled (Det er ikke muligt at åbne browseren i inkognito-tilstand)
2 = Incognito mode forced (Bowseren er altid i inkognito-tilstand)

(Dette parameter sættes også til henholdsvis 0, 1, eller 2, når flueben fjernes fra AKTIVER - dvs. når script skal deaktiveres)

