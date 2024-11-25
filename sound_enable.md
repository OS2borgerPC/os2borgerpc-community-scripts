---
title: "Aktiver lyd"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/sound_enable.sh
parameters:
  - name: "Aktivér lyd?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "Kiosk"
---

## Beskrivelse
Dette script installerer eller fjerner Ubuntus lydsystem "pulseaudio".

Efter installation heraf kan du benytte alle scripts under kategorien "Lyd" til at vælge hvilken lydenhed der skal benyttes som standard, sætte volumen på dem og deslige.

HUSK AT GENSTARTE EFTER KØRSLEN AF DETTE SCRIPT. 
Inden da vil lydsystemet (nærmere specifikt "Pulseaudio"-serveren) ikke køre.

Som udgangspunkt på Kiosk vil alle lydudgange være mutet, OG volumen er derudover sat til 0. Derfor vil forløbet typisk være følgende:
1.  Kør "Lyd - Udprint informationer omkring lydenheder" for at få navnet på den givne lydudgang, du ønsker at justere. 
     Disse lydudgange kaldes "sinks" af pulseaudio.
     To eksempler på lydenheders navne:
     alsa_output.pci-0000_00_1f.3.analog-stereo
     alsa_output.pci-0000_00_03.0.hdmi-stereo
2. Kør "Lyd - Mute/Unmute en lydenhed" med den ønskede lydenhed, for at unmute.
3. Kør "Lyd - Sæt lydniveau på lydenhed" med den ønskede lydenhed, for at sætte volumen til noget over 0.

Hvis lydenheden ikke er standard vil du skulle køre "Skift lydudgang" derudover.