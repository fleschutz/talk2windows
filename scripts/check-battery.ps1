<#
.SYNOPSIS
	Checks the battery status
.DESCRIPTION
	This PowerShell script checks the battery status.
.EXAMPLE
	PS> ./check-battery
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	Add-Type -Assembly System.Windows.Forms
	$Details = [System.Windows.Forms.SystemInformation]::PowerStatus
	switch ($Details.PowerLineStatus) {
	"Online"  { $PowerStatus = "Plugged in to AC power" }
	"Offline" { $PowerStatus = "No AC power" }
	}
	if ($Details.BatteryChargeStatus -eq "NoSystemBattery") {
		$BatteryStatus = "No battery"
	} else {
		[int]$Percent = 100*$Details.BatteryLifePercent
		[int]$Remaining = $Details.BatteryLifeRemaining / 60
		$BatteryStatus = "$Percent% battery life, $Remaining min left"
	}
	& "$PSScriptRoot/say.ps1" "$PowerStatus, $($BatteryStatus)."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
