# System-Metriken-Überwachungsskript

Das System-Metriken-Überwachungsskript ist ein PowerShell-Skript, das entwickelt wurde, um wichtige Systemmetriken wie CPU-Auslastung, Festplattenauslastung und Speicherauslastung auf einem Windows-basierten Computer zu überwachen. Das Skript bietet eine Echtzeit-Überwachung und generiert einen detaillierten Bericht, der bei Bedarf automatisch angezeigt wird.
Funktionalitäten

Echtzeitüberwachung der CPU-Auslastung, Festplattenauslastung und Speicherauslastung
Generierung eines detaillierten Berichts mit aktuellen Metrikwerten und Warnungen bei Überschreitung der Schwellenwerte
Identifizierung der fünf Prozesse mit der größten Auswirkung auf die Festplattennutzung und den Speicherverbrauch
Konfigurierbare Schwellenwerte für die Warnungen (Standard: 80%)
Unterstützung für die Ausführung in PowerShell-Umgebung oder integrierten Entwicklungsumgebungen wie Visual Studio
Öffnen des Berichts in einem separaten Editor für bequeme Anzeige und Analyse

# Technische Details

Das Skript nutzt WMI, um Systemressourcen abzufragen und die prozentuale Auslastung zu berechnen. Es erfasst CPU-Auslastung, Festplattenkapazität und physischen Speicher und berechnet basierend auf den verfügbaren Ressourcen die prozentuale Auslastung.

Das Skript überwacht die Metriken anhand vordefinierter Schwellenwerte (standardmäßig bei 80%). Überschreitet eine Metrik den Schwellenwert, generiert das Skript eine Warnung und fügt sie dem Bericht hinzu.

Um die Prozesse mit der größten Auswirkung zu identifizieren, analysiert das Skript die Festplattennutzung und den Speicherverbrauch. Diese Informationen werden im Bericht angezeigt, um Benutzern bei der Ursachenermittlung für hohe Auslastungen zu helfen.


# Projektfortschritt und Erfahrungen

Während der Skriptentwicklung überwand ich technische Herausforderungen wie PowerShell-Syntax, WMI-Abfragen und externen Editor. Dank Online-Ressourcen und ChatGPT verbesserte ich meine PowerShell-Programmierkenntnisse.

Das Projekt erweiterte meine Fähigkeiten in PowerShell, Systemüberwachung und -optimierung. Es half mir, Engpässe zu identifizieren, Auslastungen zu überwachen und Leistungsprobleme frühzeitig zu erkennen.

Zusätzlich erkannte ich die Bedeutung von Ressourcenengpässen und Hardware-Upgrades. Mein aktueller Laptop zeigt aufgrund seines Alters oft hohe Festplatten- und Speicherlasten. Diese Erkenntnis verstärkte mein Interesse an Systemoptimierung und effizienter Ressourcennutzung.

# Beispiel
![image](https://github.com/Cikle/System-Monitoring-Portfolioeintrag/assets/110893288/5372f0eb-99d4-4fcb-9eff-80895007d81c)


# Anleitung für das Skript

Klone das Repository: git clone [https://github.com/Cikle/System-metrics-monitoring-script.git](https://github.com/Cikle/System-Monitoring-Portfolioeintrag/blob/main/System-Monitoring-Script.ps1)
  
  Navigiere in das Verzeichnis: cd system-metrics-monitoring-script
  
  Führe das Skript aus: powershell ./system_metrics_monitoring.ps1
  
  Der Bericht wird automatisch in einem separaten Editor geöffnet.
