---
title: "Tilføj filer i mappe på skrivebord (Skabeloner)"
parent: "Desktop"
source: /assets/os2borgerpc-scripts/os2borgerpc/desktop/add_files_to_desktop_directory.sh
parameters:
  - name: "Tilføj mappen?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Navn på mappen"
    type: "string"
    default: null
    mandatory: true
  - name: "Kun læseadgang til originalfilerne (nulstilles uanset efter logud)"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Fil 1 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 2 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 3 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 4 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 5 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 6 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 7 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 8 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 9 (valgfri)"
    type: "file"
    default: null
    mandatory: false
  - name: "Fil 10 (valgfri)"
    type: "file"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script opretter en mappe med et valgfrit navn på Borgers skrivebord, og tilføjer de efterfølgende valgfrie filparametre til mappen. Filerne nulstilles efter logud.

Dette kan eksempelvis bruges til skabeloner eller formularer.

Hvis scriptet køres uden hak i første parameter, vil mappen med det angivne navn i stedet blive slettet.

Scriptet sletter ikke filer, der allerede måtte ligge i mappen, så det kan potentielt køres flere gange, for at tilføje yderligere filer.

Det tredje parameter afgør, om Borger har skriverettighederne til filerne i mappen. Hvis ikke, må de gemme eventuelle ændringer i skabelonen gemmes et andet sted, såsom i "Dokumenter".

Der skal logges ud og ind igen af Borger-kontoen, før det tager effekt.