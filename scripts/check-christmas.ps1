<#
.SYNOPSIS
	Checks the time until Christmas
.DESCRIPTION
	This PowerShell script checks the time until Christmas and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-christmas
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Now = [DateTime]::Now
	$Christmas = [Datetime]("$($Now.Year)-12-25 23:59:59")
	$Days = ($Christmas - $Now).Days

	if ($Days -gt 1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas is in $Days days."
	} elseif ($Days -eq 1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas is tomorrow."
	} elseif ($Days -eq 0) {
		& "$PSScriptRoot/_reply.ps1" "Today is Christmas!"
	} elseif ($Days -eq -1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas was yesterday."
	} else {
		$Days = -$Days
		& "$PSScriptRoot/_reply.ps1" "Christmas was $Days days ago."
	}
	exit 0 # success
} catch {
	"Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
