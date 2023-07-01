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

Das Skript verwendet Windows Management Instrumentation (WMI), um Systemressourcen abzufragen und die Auslastung in Prozent zu berechnen. Es ruft die CPU-Auslastung, die verfügbare Festplattenkapazität und den freien physischen Speicher ab und ermittelt die prozentuale Auslastung basierend auf den verfügbaren Ressourcen.

Das Skript überprüft die Metriken auf das Überschreiten vordefinierter Schwellenwerte (standardmäßig auf 80% festgelegt). Wenn eine Metrik den Schwellenwert überschreitet, wird eine Warnung generiert und in den Bericht aufgenommen.

Die Identifizierung der Prozesse mit der größten Auswirkung erfolgt durch Analyse der Festplattennutzung und des Speicherverbrauchs. Diese Informationen werden im Bericht bereitgestellt, um Benutzern bei der Ermittlung möglicher Ursachen für hohe Auslastungen zu unterstützen.


# Projektfortschritt und Erfahrungen

Während der Entwicklung des Skripts wurden verschiedene technische Herausforderungen bewältigt, darunter das Erlernen der PowerShell-Syntax, das Arbeiten mit WMI-Abfragen und das Einbinden eines externen Editors. Durch die Nutzung von Online-Ressourcen und die Unterstützung von ChatGPT konnte ich diese Herausforderungen erfolgreich meistern und mein Verständnis für PowerShell-Programmierung erweitern.

Das Projekt hat mir wertvolle Erfahrungen im Bereich PowerShell-Programmierung, Systemüberwachung und -optimierung ermöglicht. Insbesondere das Arbeiten mit Systemmetriken und das Programmieren von Automatisierungsskripten haben meine Fähigkeiten erweitert. Das Skript hat mir gezeigt, wie man systematische Engpässe identifiziert, Auslastungen überwacht und Leistungsprobleme frühzeitig erkennt.

Zusätzlich zur technischen Entwicklung habe ich gelernt, wie wichtig es ist, Ressourcenengpässe zu erkennen und mögliche Hardware-Upgrades in Betracht zu ziehen. Das Skript hat mir verdeutlicht, dass mein aktueller Laptop aufgrund seines Alters oft hohe Festplatten- und Speicherlasten aufweist. Diese Erkenntnis hat mein Interesse an Systemoptimierung und effizienter Ressourcennutzung weiter verstärkt.

# Beispiel
![image](https://github.com/Cikle/System-Monitoring-Portfolioeintrag/assets/110893288/5372f0eb-99d4-4fcb-9eff-80895007d81c)


# Anleitung für das Skript

Klone das Repository: git clone [https://github.com/Cikle/System-metrics-monitoring-script.git](https://github.com/Cikle/System-Monitoring-Portfolioeintrag/blob/main/System-Monitoring-Script.ps1)
Navigiere in das Verzeichnis: cd system-metrics-monitoring-script
Führe das Skript aus: powershell ./system_metrics_monitoring.ps1
Der Bericht wird automatisch in einem separaten Editor geöffnet.
