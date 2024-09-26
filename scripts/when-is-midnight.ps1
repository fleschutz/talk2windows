<#
.SYNOPSIS
	Replies to 'When is midnight?'
.DESCRIPTION
	This PowerShell script replies to 'When is midnight?' by text-to-speech (TTS).
#>

function GetTimeSpan { param([TimeSpan]$Delta)
	$Result = ""
	if ($Delta.Hours -eq 1) {       $Result += "1 hour and "
	} elseif ($Delta.Hours -gt 1) { $Result += "$($Delta.Hours) hours and "
	}
	if ($Delta.Minutes -eq 1) { $Result += "1 minute"
	} else {                    $Result += "$($Delta.Minutes) minutes"
	}
	return $Result
}

try {
	$Now = [DateTime]::Now
	if ($Now.Hour -lt 12) {
		$Midnight = Get-Date -Hour 0 -Minute 0 -Second 0
		$TimeSpan = GetTimeSpan($Now - $Midnight)
		$Reply = "Midnight was $TimeSpan ago."
	} else {
		$Midnight = Get-Date -Hour 23 -Minute 59 -Second 59
		$TimeSpan = GetTimeSpan($Midnight - $Now)
		$Reply = "Midnight is in $TimeSpan."
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
