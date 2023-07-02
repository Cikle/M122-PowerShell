<#
.SYNOPSIS
   System Metrics Script
.DESCRIPTION
   This script generates a report of system metrics including CPU usage, disk usage, and memory usage.
.NOTES
   Author: Cyril Lutziger
   Version: 2.1
   Date: 01.07.
#>

# Define the system metrics
$cpuThreshold = 80   # CPU usage in percentage
$memoryThreshold = 80   # Memory usage in percentage
$diskThreshold = 80   # Disk usage in percentage

# Function to generate the system metrics report
function GenerateSystemMetricsReport {
    # Get system metrics
    $cpuUsage = (Get-WmiObject -Class Win32_Processor | Measure-Object -Property LoadPercentage -Average).Average
    $memoryUsage = Get-WmiObject -Class Win32_OperatingSystem | Select-Object -ExpandProperty FreePhysicalMemory
    $diskUsage = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DeviceID -eq 'C:' } | Select-Object -ExpandProperty FreeSpace

    # Calculate memory and disk usage percentages
    $totalMemory = (Get-WmiObject -Class Win32_OperatingSystem).TotalVisibleMemorySize
    $totalDiskSpace = (Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DeviceID -eq 'C:' }).Size
    $memoryUsagePercent = [math]::Round(($totalMemory - $memoryUsage) / $totalMemory * 100, 2)
    $diskUsagePercent = [math]::Round(($totalDiskSpace - $diskUsage) / $totalDiskSpace * 100, 2)

    # Create the report
    $report = @"
System Metrics Report
----------------------------------

CPU usage: $cpuUsage%
----------------------------------
Disk usage: $diskUsagePercent%
----------------------------------
Memory usage: $memoryUsagePercent%



"@

    # Check CPU usage
    if ($cpuUsage -ge $cpuThreshold) {
        $report += @"
CPU usage is high! Current usage: $cpuUsage%

"@
    }

    # Check disk usage
    if ($diskUsagePercent -ge $diskThreshold) {
        $report += @"
Disk usage is high! Current usage: $diskUsagePercent%

"@
        # Get processes with highest disk usage
        $topDiskProcesses = Get-Process | Sort-Object -Property DiskUsage -Descending | Select-Object -First 5
        $report += @"
Processes with highest disk usage:
$($topDiskProcesses | Format-Table -AutoSize | Out-String)

"@
    }

    # Check memory usage
    if ($memoryUsagePercent -ge $memoryThreshold) {
        $report += @"
Memory usage is high! Current usage: $memoryUsagePercent%

"@
        # Get processes with highest memory usage
        $topMemoryProcesses = Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5
        $report += @"
Processes with highest memory usage:
$($topMemoryProcesses | Format-Table -AutoSize | Out-String)

"@
    }

    return $report
}


# Generate the system metrics report
$systemMetricsReport = GenerateSystemMetricsReport

# Define the editor name
$editorName = "SystemMetricsReport-" + (Get-Date -Format "yyyy-MM-dd-HH-mm-ss")

# Save the report to a file
$reportPath = Join-Path -Path $env:TEMP -ChildPath "$editorName.txt"
$systemMetricsReport | Out-File -FilePath $reportPath -Encoding UTF8

# Open the report in an editor
notepad.exe $reportPath