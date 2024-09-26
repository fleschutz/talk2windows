<#
.SYNOPSIS
	Tells the time until Noon
.DESCRIPTION
	This PowerShell script tells the time until Noon by text-to-speech (TTS).
#>

function GetTimeSpan { param([TimeSpan]$delta)
	$result = ""
	if ($delta.Hours -eq 1) {       $result += "1 hour and "
	} elseif ($delta.Hours -gt 1) { $result += "$($delta.Hours) hours and "
	}
	if ($delta.Minutes -eq 1) { $result += "1 minute"
	} else {                    $result += "$($delta.Minutes) minutes"
	}
	return $result
}

try {
	$now = [DateTime]::Now
	$noon = Get-Date -Hour 12 -Minute 0 -Second 0
	if ($now -lt $noon) {
		$reply = "Noon is in $(GetTimeSpan($noon - $now))."
	} else {
		$reply = "Noon was $(GetTimeSpan($now - $noon)) ago."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
