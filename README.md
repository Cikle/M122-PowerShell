# System-Metrics-Überwachungsskript
**Ein Projekt aus dem Modul 122**

**Gruppenmitglieder:** Cyril Lutziger

## Einleitung
Das System-Metriken-Überwachungsskript ist ein PowerShell-Skript zur Echtzeitüberwachung wichtiger Systemmetriken auf Windows-Computern. Es überwacht CPU-Auslastung, Festplattenauslastung und Speicherauslastung und erstellt einen detaillierten Bericht.


**Funktionen:**
* Echtzeitüberwachung von CPU, Festplatte und Speicher
* Generierung eines detaillierten Berichts mit aktuellen Werten und Warnungen bei Schwellenwertüberschreitungen
* Identifizierung der fünf Prozesse mit höchster Festplattennutzung und Speicherverbrauch
* Anpassbare Warnschwellenwerte (Standard: 80%)
* Unterstützung für PowerShell oder integrierte Entwicklungsumgebungen wie Visual Studio
* Öffnen des Berichts in einem separaten Editor für bequeme Anzeige und Analyse

## Technische Details

Das Skript nutzt WMI, um Systemressourcen abzufragen und die prozentuale Auslastung zu berechnen. Es erfasst CPU-Auslastung, Festplattenkapazität und physischen Speicher und berechnet basierend auf den verfügbaren Ressourcen die prozentuale Auslastung.

Das Skript überwacht die Metriken anhand vordefinierter Schwellenwerte (standardmässig bei 80%). Überschreitet eine Metrik den Schwellenwert, generiert das Skript eine Warnung und fügt sie dem Bericht hinzu.

Um die Prozesse mit der grössten Auswirkung zu identifizieren, analysiert das Skript die Festplattennutzung und den Speicherverbrauch. Diese Informationen werden im Bericht angezeigt, um Benutzern bei der Ursachenermittlung für hohe Auslastungen zu helfen.


## Projektfortschritt und Erfahrungen

Während der Skriptentwicklung überwand ich technische Herausforderungen wie PowerShell-Syntax, WMI-Abfragen und externen Editor. Dank Online-Ressourcen und ChatGPT verbesserte ich meine PowerShell-Programmierkenntnisse.

Das Projekt erweiterte meine Fähigkeiten in PowerShell, Systemüberwachung und -optimierung. Es half mir, Engpässe zu identifizieren, Auslastungen zu überwachen und Leistungsprobleme frühzeitig zu erkennen.

Zusätzlich erkannte ich die Bedeutung von Ressourcenengpässen und Hardware-Upgrades. Mein aktueller Laptop zeigt aufgrund seines Alters oft hohe Festplatten- und Speicherlasten. Diese Erkenntnis verstärkte mein Interesse an Systemoptimierung und effizienter Ressourcennutzung.
