<#
.SYNOPSIS
	Replies to 'When is Christmas?'
.DESCRIPTION
	This PowerShell script replies to 'When is Christmas?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-christmas
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Now = [DateTime]::Now
	$Christmas = [Datetime]("$($Now.Year)-12-24 23:59:59")
	$Days = ($Christmas - $Now).Days

	if ($Days -gt 1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas Eve is in $Days days."
	} elseif ($Days -eq 1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas Eve is tomorrow."
	} elseif ($Days -eq 0) {
		& "$PSScriptRoot/_reply.ps1" "Today is Christmas Eve!"
	} elseif ($Days -eq -1) {
		& "$PSScriptRoot/_reply.ps1" "Christmas Eve was yesterday."
	} else {
		$Days = -$Days
		& "$PSScriptRoot/_reply.ps1" "Christmas Eve was $Days days ago."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
