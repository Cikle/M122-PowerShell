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
    System Metrics Report
    ----------------------------------

    CPU usage: 3%
    ----------------------------------
    Disk usage: 81.43%
    ----------------------------------
    Memory usage: 86.69%


    Disk usage is high! Current usage: 81.43%
    Processes with highest disk usage:

    Handles NPM(K) PM(K) WS(K) CPU(s)   Id SI ProcessName
    ------- ------ ----- ----- ------   -- -- -----------
        171      7  1952  1548        2200  0 svchost    
        180     13  2156  4280        2276  0 svchost    
        257     14 11628  6276        2060  0 svchost    
        208     11  2432  1612        2072  0 svchost    
        240     11  3268  3712        2536  0 svchost    



    Memory usage is high! Current usage: 86.69%
    Processes with highest memory usage:

    Handles NPM(K)  PM(K)  WS(K) CPU(s)    Id SI ProcessName
    ------- ------  -----  ----- ------    -- -- -----------
       1465    195 468284 357540 187,70 19152  4 Discord    
        345     67 331852 290432 350,11 23060  4 firefox    
        345     58 271012 290240  29,94 13216  4 firefox    
       2281    125 301784 263384 175,95  5088  4 firefox    
        324     68 302812 261560   9,98 14348  4 firefox    











# Anleitung für das Skript

Klone das Repository: git clone [https://github.com/Cikle/System-metrics-monitoring-script.git](https://github.com/Cikle/System-Monitoring-Portfolioeintrag/blob/main/System-Monitoring-Script.ps1)
Navigiere in das Verzeichnis: cd system-metrics-monitoring-script
Führe das Skript aus: powershell ./system_metrics_monitoring.ps1
Der Bericht wird automatisch in einem separaten Editor geöffnet.
