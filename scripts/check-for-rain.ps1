<#
.SYNOPSIS
	Checks for rain 
.DESCRIPTION
	Queries the current weather report for rain and answers by text-to-speech (TTS).
.PARAMETER location
	Specifies the location to use (determined automatically per default)
.EXAMPLE
	PS> ./check-for-rain
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$location = "") # empty means determine automatically

try {
	$Weather = (Invoke-WebRequest http://wttr.in/${location}?format=j1 -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$Temp = $Weather.current_condition.temp_C
	$Precip = $Weather.current_condition.precipMM
	
	if ($Precip -eq "0.0") {
		$Reply = "No rain right now."
	} elseif ($Temp -lt "0.0") {
		$Reply = "It's snowing $($Precip) millimeters per hour."
	} else {
		$Reply = "It's raining $($Precip) millimeters per hour."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
