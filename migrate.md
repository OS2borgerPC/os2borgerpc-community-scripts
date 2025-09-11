---
title: "Flyt computer til andet admin-site"
parent: "System"
source: scripts/migrate.sh
parameters:
  - name: "Ny Admin URL"
    type: "string"
    default: null
    mandatory: false
  - name: "Site"
    type: "string"
    default: null
    mandatory: false
  - name: "Bearer token "
    type: "string"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette er et script til at migrere en computer fra et admin site til en anden.

Vær opmærksomme på følgende:

Migreringsscriptet er ikke testet med alle tænkelige setups, og det anbefales derfor at tage følgende forholdsregler:
1. Start med at migrere én computer, der er let tilgængelig fysisk i tilfælde af problemer.
2. Test de samme scripts fra den gamle admin-site på den migrerede computer.
3. Fortsæt med at migrere i små grupper iterativt, og gentag testene.
4. Undgå at migrere alle computere på én gang.

- Ved kørsel skifter scriptet status til Afsendt, men vil ikke ændre status til Udført, da computeren ikke længere kommunikerer med den gamle admin-site efter flytningen.

Scripts der er kørt på en computer, migreres ikke automatisk.
- Den nye admin-site vil registrere computeren som en "ny" BorgerPC.
- Det anbefales at genkøre de relevante scripts manuelt på den nye site for at genskabe opsætningen.

- Migreringsscriptet har en simpel backupmekanisme hvis migreringen fejler. Dette er primært tiltænkt til hvis man indtaster en invalid URL eller site.


Inputparametre (alle er valgfrie):

    Admin URL (string):
        Beskrivelse: URL'en til den nye admin-site, hvor computeren skal forbindes. Dette er den samme URL, som man taster i sin browser for at tilgå admin-site.
        Standard: Hvis parameteren ikke angives, bevares den eksisterende admin URL.
        Eksempel: https://os2borgerpc.admin-site.dk.

    Site (string):
        Beskrivelse: UID for den nye site, som computeren skal tilknyttes. UID'et kan findes under "Site-indstillinger" på den nye admin-site.
        Standard: Hvis parameteren ikke angives, bevares den eksisterende site.
        Eksempel: default.

    Bearer token (string):
        Beskrivelse: API-nøgle fra den admin-site, computeren migreres fra. Bruges til at sikre, at computernavnet overføres med både store og små bogstaver.
        Standard: Hvis parameteren ikke angives, vil computernavnet blive overført med kun små bogstaver.
        Hvor findes det: Under "Site-indstillinger" -> "Håndter API-nøgler" på den gamle admin-site. Hvis der ikke findes en eksisterende nøgle, kan en ny genereres.
        Eksempel: eyJhbGciOiJIUzI1NiIsInR5cCI6....