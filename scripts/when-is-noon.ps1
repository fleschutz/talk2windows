<#
.SYNOPSIS
	Tells the time until Noon
.DESCRIPTION
	This PowerShell script tells the time until Noon by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-noon
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
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
	$Noon = Get-Date -Hour 12 -Minute 0 -Second 0
	if ($Now -lt $Noon) {
		$TimeSpan = GetTimeSpan($Noon - $Now)
		$Reply = "Noon is in $TimeSpan."
	} else {
		$TimeSpan = GetTimeSpan($Now - $Noon)
		$Reply = "Noon was $TimeSpan ago."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}