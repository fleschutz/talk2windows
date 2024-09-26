<#
.SYNOPSIS
	Replies the time until Tea time
.DESCRIPTION
	This PowerShell script checks the time until Tea time and replies by text-to-speech (TTS).
#>

function TimeSpan2String { param([TimeSpan]$delta)
	$Result = ""
	if ($delta.Hours -eq 1) {       $Result += "1 hour and "
	} elseif ($delta.Hours -gt 1) { $Result += "$($delta.Hours) hours and "
	}
	if ($delta.Minutes -eq 1) { $Result += "1 minute"
	} else {                    $Result += "$($delta.Minutes) minutes"
	}
	return $Result
}

try {
	$now = [DateTime]::Now
	$teaTime = Get-Date -Hour 16 -Minute 0 -Second 0

	if ($now -lt $teaTime) {
		$reply = "Tea time is in $(TimeSpan2String($teaTime - $now))."
	} else {
		$reply = "Tea time was $(TimeSpan2String($now - $teaTime)) ago."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
