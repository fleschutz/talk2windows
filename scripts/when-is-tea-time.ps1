<#
.SYNOPSIS
	Replies the time until Tea time
.DESCRIPTION
	This PowerShell script checks the time until Tea time and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-tea-time
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

function TimeSpan2String { param([TimeSpan]$Delta)
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
	$TeaTime = Get-Date -Hour 16 -Minute 0 -Second 0
	if ($Now -lt $TeaTime) {
		$TimeSpan = TimeSpan2String($TeaTime - $Now)
		$Reply = "Tea time is in $TimeSpan."
	} else {
		$TimeSpan = TimeSpan2String($Now - $TeaTime)
		$Reply = "Tea time was $TimeSpan ago."
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
