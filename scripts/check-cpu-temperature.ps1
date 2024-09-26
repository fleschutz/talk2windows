<#
.SYNOPSIS
	Checks the CPU temperature
.DESCRIPTION
	This PowerShell script determines the CPU temperature and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-cpu-temperature
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/say.ps1" "Hold on."

	if (test-path "/sys/class/thermal/thermal_zone0/temp" -pathType leaf) {
		[int]$IntTemp = get-content "/sys/class/thermal/thermal_zone0/temp"
		$Temp = [math]::round($IntTemp / 1000.0, 1)
	} else {
		$data = Get-WMIObject -Query "SELECT * FROM Win32_PerfFormattedData_Counters_ThermalZoneInformation" -Namespace "root/CIMV2"
		$Temp = @($data)[0].HighPrecisionTemperature
		$Temp = [math]::round($Temp / 100.0, 1)
	}
	if ($Temp -gt 80) {
		$Reply = "CPU is extremely hot at $($Temp) degrees Celsius!"
	} elseif ($Temp -gt 50) {
		$Reply = "CPU is $($Temp) degrees Celsius hot."
	} elseif ($Temp -gt 0) {
		$Reply = "CPU is $($Temp) degrees Celsius warm."
	} elseif ($Temp -gt -20) {
		$Reply = "CPU is $($Temp) degrees Celsius cold."
	} else {
		$Reply = "CPU is extremely cold at $($Temp) degrees Celsius!"
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
