---
title: "Sæt volumen på lydudgang"
parent: "Lyd"

source: /assets/os2borgerpc-scripts/common/lyd/pulse_policy_sink_volume.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Lydenhed (sink)"
    type: "string"
    default: null
    mandatory: true
  - name: "Lydniveau (i procent, uden procenttegn)"
    type: "int"
    default: null
    mandatory: true
compatibility:
  - "Kiosk"
  - "BorgerPC"
---

## Beskrivelse
Specifikt sættes volumen på en "Pulseaudio sink".

Ændringen tager først effekt efter genstart.

## Parametre
1. Aktiver: Sæt hak medmindre du ønsker at nulstille sætning af lydniveau for lydenheden.
2. Lydenhed (sink): Navnet på lydenheden. Kør scriptet "Lyd - Udprint informationer omkring lydenheder" for at se navne på alle lydenheder på maskinen.
3. Lydniveau: Hvilket lydniveau du ønsker til lydenheden, angivet i procent, uden procenttegnet.

To eksempler på navne for lydenheder:
1. alsa_output.pci-0000_00_1f.3.analog-stereo
2. alsa_output.pci-0000_00_03.0.hdmi-stereo