<#
.SYNOPSIS
	Checks the time until Independence Day
.DESCRIPTION
	This PowerShell script checks the time until Indepence Day and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-independence-day
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = [DateTime]::Now
	$IndependenceDay = [Datetime]("07/04/" + $Now.Year)
	if ($Now -lt $IndependenceDay) {
		$Diff = $IndependenceDay - $Now
		& "$PSScriptRoot/_reply.ps1" "Independence Day on July 4th is in $($Diff.Days) days."
	} else {
		$Diff = $Now - $IndependenceDay
		& "$PSScriptRoot/_reply.ps1" "Independence Day on July 4th was $($Diff.Days) days ago."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
