---
title: "Juster Ubuntu Dock (programmenu)"
parent: "Desktop"
source: os2borgerpc-scripts/os2borgerpc/desktop/dconf_ubuntu_dock_adjust.sh
parameters:
  - name: "Ønsket position for menuen (LEFT er standard)"
    type: "text_field"
    default: "LEFT,RIGHT,TOP,BOTTOM"
    mandatory: false
  - name: "Flyt applikationsåbner-knappen til starten af menuen? (udeladt hak er standard)"
    type: "boolean"
    default: null
    mandatory: false
compatibility:
  - "BorgerPC"
---

## Beskrivelse
Dette script kan justere Ubuntus Dock (programmenuen ved siden af skrivebordet) på to måder:

1. Ubuntu Docks ligger normalt opad venstre kant af skærmen ("LEFT"), men kan flyttes til en af de andre sider.
2. Applikationsstarteren (de 9 "prikker") ligger normalt i bunden af menuen. Hvis du vælger "true", kan den flyttes til toppen.

Tager scriptet ikke øjeblikkeligt effekt, så prøv med en genstart.