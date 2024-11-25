---
title: "Trin 3 - BorgerPC opgradering til Ubuntu 22.04"
parent: "Opgradering"
nav_order: 6
summary: |
         Dette script er tredje skridt i opgraderingen til Ubuntu 22.04 på almindelig OS2borgerPC.
source: /assets/os2borgerpc-scripts/common/22_04_opgradering/os2borgerpc_lts_upgrade_in_place_step_3.sh
parameters: []
compatibility: 
  - "20.04"
  - "BorgerPC"
---

## Beskrivelse
Læs HELE beskrivelsen før I kører dette eller et andet opgraderingsscript.
Det anbefales at I starter med at teste opgraderingen på en enkelt maskine.

Maskinen må ikke slukkes eller sættes i dvale, mens trin 2 eller 3 kører. Det første trin i opgraderingsprocessen slår eventuelle planlagte nedlukninger fra, og det sidste trin genaktiverer dem, men det er vigtigt, at maskinen ikke slukkes på knappen eller får taget strømmen, mens trin 2 eller 3 kører.

Undgå at køre andre scripts på maskinen, før hele opgraderingsprocessen er færdig.

### Herunder beskrives opgraderingsprocessen for almindelig OS2borgerPC:

1. Kør scriptet "Opgradering til Ubuntu 22.04 trin 1". Det skal stå som udført.

2. Kør scriptet "Opgradering til Ubuntu 22.04 trin 2". Det skal stå som udført. Dette script opdaterer computeren og kan tage op til 30-40 minutter, hvis computeren ikke er blevet opdateret i længere tid. Hvis det fejler med en besked ala “Unable to acquire dpkg frontend lock…” er det fordi computeren er ved at køre automatiske opdateringer. Vent 5 minutter og prøv at køre scriptet igen. Hvis det fejler med en besked om "uopfyldte afhængigheder" kan det ofte løses ved at køre scriptet igen.

3. Genstart computeren fx via scriptet "System - Genstart computeren NU"

4. Kør scriptet "Opgradering til Ubuntu 22.04 trin 3". Det skal stå som udført. Dette script udfører selve opgraderingen og kan tage op til en time.

5.  Genstart computeren fx via scriptet "System - Genstart computeren NU"

6. Kør scriptet "Opgradering til Ubuntu 22.04 trin 4". Dette script udfører de sidste justeringer. Det skal stå som udført.

7. Maskinen er nu opgraderet til Ubuntu 22.04

### Herunder beskrives opgraderingsprocessen for OS2borgerPC Kiosk:
1. Kør scriptet "Opgradering til Ubuntu 22.04 trin 1". Det skal stå som udført.

2. Kør scriptet "Opgradering til Ubuntu 22.04 trin 2". Det skal stå som udført. Dette script opdaterer computeren og kan tage op til 30-40 minutter, hvis computeren ikke er blevet opdateret i længere tid. Hvis det fejler med en besked ala “Unable to acquire dpkg frontend lock…” er det fordi computeren er ved at køre automatiske opdateringer. Vent 5 minutter og prøv at køre scriptet igen. Hvis det fejler med en besked om "uopfyldte afhængigheder" kan det ofte løses ved at køre scriptet igen.

3. Genstart computeren fx via scriptet "System - Genstart computeren NU"

4. Kør scriptet "Kiosk Opgradering til Ubuntu 22.04 trin 3". Det skal stå som udført. Dette script udfører selve opgraderingen og kan tage op til en time.

5. Kør scriptet "Kiosk Opgradering til Ubuntu 22.04 trin 4". Dette script udfører de sidste justeringer. Det skal stå som udført.

6. Maskinen er nu opgraderet til Ubuntu 22.04