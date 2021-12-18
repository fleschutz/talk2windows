<#
.SYNOPSIS
	Checks the time until Easter Sunday
.DESCRIPTION
	This PowerShell script checks the time until Easter Sunday and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-easter-sunday
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = [DateTime]::Now
	$Easter = [Datetime]("04/17/2022")
	if ($Now -lt $Easter) {
		$Diff = $Easter - $Now
		$Reply = "Easter Sunday on April 17 is in $($Diff.Days) days."
	} else {
		$Diff = $Now - $Easter
		$Reply = "Easter Sunday on April 17 was $($Diff.Days) days ago."
	}
	& "$PSScriptRoot/give-reply.ps1" "$Reply"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
