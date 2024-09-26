<#
.SYNOPSIS
	Checks the time until Saint Nicholas Day
.DESCRIPTION
	This PowerShell script checks the time until Saint Nicholas Day and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-santa
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = [DateTime]::Now
	$Diff = [Datetime]("12/06/" + $Now.Year) - $Now

	& "$PSScriptRoot/say.ps1" "Saint Nicholas Day is in $($Diff.Days) days."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
