<#
.SYNOPSIS
	Replies to 'When is Christmas?'
.DESCRIPTION
	This PowerShell script replies to 'When is Christmas?' by text-to-speech (TTS).
#>

try {
	$now = [DateTime]::Now
	$xmas = [Datetime]("$($now.Year)-12-24 23:59:59")
	$numDays = ($xmas - $now).Days

	if ($numDays -gt 1) {
		$reply = "Christmas Eve is in $numDays days."
	} elseif ($numDays -eq 1) {
		$reply = "Christmas Eve is tomorrow."
	} elseif ($numDays -eq 0) {
		$reply = "Today is Christmas Eve!"
	} elseif ($numDays -eq -1) {
		$reply = "Christmas Eve was yesterday."
	} else {
		$reply = "Christmas Eve was $(-$numDays) days ago."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
