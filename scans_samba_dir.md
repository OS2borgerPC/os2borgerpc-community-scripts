---
title: "Opret delt Samba-mappe til skan"
parent: "Skanner"
source: scripts/scans_samba_dir.sh
parameters:
  - name: "Installer Samba og opret delt mappe?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Navn på mappen på skrivebordet"
    type: "string"
    default: null
    mandatory: true
  - name: "Ønsket kodeord til Samba-brugeren"
    type: "password"
    default: null
    mandatory: true
  - name: "Deaktiver NTLMv1 (så kun NTLMv2 og nyere tillades)"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Tillad forbindelse over NetBIOS"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script installerer Samba, og opretter følgende:
- En Samba share ved navn "scan".
  Denne "share" peger på en mappe på Borgers skrivebord, med et valgfrit navn, som man vælger via andet parameter til dette script
 Brugernavnet og gruppen denne "share" deles som, hedder "samba". 
 Gæsteadgang er slået fra. Muligheden for at at oprette "Usershares" er slået fra. 
Brugernavnet skal være "samba". Kodeordet for denne "samba"-bruger vælger du selv via det tredje parameter til dette script.
Navnet på Workgroup er WORKGROUP.

Samba-forbindelsen kan oprettes på to måder:
- Samba over TCP direkte (nyere, anbefales): Her kører serveren på TCP port 445. Både IPv4 og IPv6 skulle være understøttet.
  Vi anbefaler at vælge Samba over TCP direkte, såfremt skanneren understøtter det.
- Samba over NetBIOS over TCP): Her køres serveren på TCP port 139 + UDP port 137 og 138. IPv4 er understøttet.
  Denne forbindelses-metode er ældre, og anbefales derfor kun til ældre scannere, hvor førstnævnte ikke virker.

BEMÆRK: 
- Der SKAL logges ud efter kørsel af dette script, før denne share/delte mappe eksisterer, og derved før forbindelsen kan oprettes!
- Det kan være nødvendigt at vælge en bestemt version af NTLM i skannerens Samba-indstillinger. Dvs. NTLMv1 eller NTLMv2.

## Parametre
- Aktiver: 
  - Sæt hak for at installere Samba og oprette mappen.
  - Udelad hak for at fjerne Samba og mappen.
- Navn på mappen på skrivebordet
- Vælg kodeord til Samba-brugeren. Når du kører dette script for at deaktivere funktionen, er dette parameter ikke nødvendigt.
- NTLMv2 eller nyere er et krav i Sambas standardkonfiguration. Sæt hak her for at tillade ældre versioner - dvs. NTLMv1. De ældre protokoller er mindre sikre, men omvendt kan nogle (ældre) enheder ikke understøtte de nye protokoller, så det kan være nødvendigt, for at få forbindelsen til at virke.
- NetBIOS er aktiveret som standard, som både tillader at forbinde til Samba over NetBIOS og TCP direkte. Fjern hakket for at deaktivere NetBIOS-understøttelse.
  Dette kan du gøre, hvis skanneren forbinder til Samba direkte over port 445, som er den nyere standard.