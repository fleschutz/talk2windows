<#
.SYNOPSIS
	Replies to 'When is Christmas?'
.DESCRIPTION
	This PowerShell script replies to 'When is Christmas?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-christmas
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
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
