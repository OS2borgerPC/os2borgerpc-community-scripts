---
title: "Skift baggrundsbillede på loginskærm"
parent: "Login"
source: os2borgerpc-scripts/os2borgerpc/login/dconf_change_login_bg.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Billede"
    type: "file"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Scriptet skifter baggrundsbilledet på loginskærmen.


##### VEJLEDNING #####

Undgå at bruge æøå i filnavnet, da det kan forårsage problemer.

Billedets opløsning skal som minimum svare til skærmens opløsning.

Undersøg størrelsesforhold / "aspect ratio" på de pågældende skærme. Saml eventuelt skærme med ens størrelsesforhold i en gruppe for sig, hvis der er en-til-mange af forskellige størrelsesforhold. Hvis et givent billedes størrelsesforhold er anderledes fra skærmens størrelsesforhold, så får man et "strukket" billede.

For se en given maskines skærmopløsning samt størrelsesforhold, så log på som superuser og gå til "indstillinger" -> "Skærme".

Eksempler på opløsninger til forskellige størrelsesforhold:

4:3
800 x 600
1024 x 768
1400 x 1050
1600 x 1200

5:4
1280 x 1024
2560 x 2048

16:9
1366 x 768
1600 x 900
1920 x 1080
2560 x 1440

16:10
1280 x 800
1440 x 900
1680 x 1050
1920 x 1200
2560 x 1600

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre

1. Aktivér: 
    Sæt hak for at sætte og fastlåse baggrundsbilledet
    Udelad hak for at gøre det muligt manuelt at sætte sit eget billede direkte fra computeren
2. Billede : Filupload