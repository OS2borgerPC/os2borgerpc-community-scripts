---
title: "System - Konfigurer WPA2 Enterprise-forbindelse"
parent: "System"
source: /assets/os2borgerpc-scripts/common/system/wpa2_enterprise_wifi_configure_and_connect.sh
parameters:
  - name: "SSID (Navn på trådløst netværk)"
    type: "string"
    default: null
    mandatory: true
  - name: "IFNAME"
    type: "string"
    default: null
    mandatory: true
  - name: "KEYMGMT"
    type: "string"
    default: null
    mandatory: true
  - name: "AUTHALGO"
    type: "string"
    default: null
    mandatory: true
  - name: "EAP"
    type: "string"
    default: null
    mandatory: true
  - name: "PHASE2AUTH"
    type: "string"
    default: null
    mandatory: true
  - name: "Brugernavn til det trådløse netværk"
    type: "string"
    default: null
    mandatory: true
  - name: "Adgangskode"
    type: "password"
    default: null
    mandatory: true

---

## Beskrivelse
Udviklet og testet i samarbejde med Aarhus kommune.

Har man ikke har kendskab til nedenstående parametre, så skal man have fat i den afdeling, eller leverandør der administrerer ens netværk. Dette er ikke noget Magenta har indsigt i, men vi hjælper selvfølgelig gerne.
Hvis man bruger WPA2 Enterprise, så bør/skal man som udgangspunkt ift. optimeret sikkerhed have en (RADIUS) konto per PC.

OBS! Scriptet understøtter pt. ikke konfiguration af BSSID (Basic Service Set Identifier) der giver muligheden for at denifere hvilket konkret accespoint en OS2borgerpc'en skal forbinde til. Dette ville kræve noget videreudvikling af nuværende løsning.

##### INPUTPARAMETRE #####

Datatype for samtlige parametre er tekststreng.

1. SSID (navnet på det trådløse netværk)
2. IFNAME (navnet på netværksinterfacet - kør scriptet "Vis netværksenheder og -adresser" for at se dem listet)
3. KEYMGMT (eksempler: "wpa-psk" (WPA2 Personal eller WPA3 Personal), "wpa-eap" (WPA2 enterprise eller WPA3 enterprise), "sae" (WPA3))
4. AUTHALGO (eksempler: "open", "shared", "leap")
5. EAP (eksempler: "peap", "leap", "md5", "tls", "ttls", "pwd", "fast".)
6. PHASE2AUTH (eksempler: "mschapv2", "pap", "chap", "mschap")
7. Brugernavn til det trådløse netværk
8. Adgangskode til det trådløse netværk

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.