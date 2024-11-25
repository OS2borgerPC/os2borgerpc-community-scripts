---
title: "Forhindr kørsel af eksekverbare tekst-filer fra GNOME Files (Nautilus)"
parent: "Sikkerhed"
source: /assets/os2borgerpc-scripts/os2borgerpc/sikkerhed/dconf_files_deny_shell_script_running.sh
parameters:
  - name: "Forhindr kørsel af eksekverbare tekst-filer"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script er designet til at forhindre kørsel af ekserkverbare tekst-filer (scripts) fra GNOME Files. 
Dvs. hvis en person eksempelvis skulle downloade et script og køre det på computeren. 
Dette script har ingen sikkerhedsmæssig effekt, medmindre man også kører vores script til at fjerne Terminal for Borger, da man så ellers kan skrive/hente/afvikle scriptet fra terminal i stedet.

Grundlæggende mener vi ikke, at dette er et kritisk script rent sikkerhedsmæssigt, af den årsag, at HVIS det skulle vise sig der er en kommando eller række af kommandoer gør det muligt at udnytte et tænkt sikkerhedshul på en BorgerPC, så er det nærmere det kommandoerne gør, der bør sikres/forhindres. Dvs. det egentlige sikkerhedshul ligger i det kommandoerne har rettigheder til at kunne, ikke i selve kommandoerne.

BESKRIVELSE:

Dette script forhindrer kørsel af eksekverbare tekst-filer fra GNOME Files (Nautilus), af sikkerhedsmæssige grunde. Dvs. selv hvis et script sættes som eksekverbart vil GNOME Files, åbne det ved dobbeltklik i et teksredigeringsprogram, fremfor at det afvikles.
Det kunne eksempelvis være et script, de har fundet, eller selv har skrevet, og efterfølgende downloadet eller kopieret over til maskinen.

Dette script forhindrer IKKE kørsel af downloadede/overførte »binære« filer. Vi er i gang med at se på løsninger for at forhindre kørsel af disse.

Det skal dog siges, at et sådant script eller binær fil uanset ikke har adgang til at lave permanente ændringer i styresystemet, som overlever logud.
Det er nærmere for at låse systemet mere ned, i løbet af et givent login.

Dette script virker IKKE i 22.04. Dvs. det har ingen effekt og det er (desværre) stadig muligt at køre scripts fra Nautilus.