<#
.SYNOPSIS
	Sets a Reminder at 11 AM
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's 11 AM.
.EXAMPLE
	PS> ./remind-me-at-11-am
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TimeSpanToString { param([TimeSpan]$Delta)
        if ($Delta.Hours -eq 1) {       $Result += "1 hour and "
        } elseif ($Delta.Hours -gt 1) { $Result += "$($Delta.Hours) hours and "
        }
        if ($Delta.Minutes -eq 1) { $Result += "1 minute"
        } else {                    $Result += "$($Delta.Minutes) minutes"
        }
        return $Result
}

try {
	[system.threading.thread]::currentThread.currentCulture = [system.globalization.cultureInfo]"en-US"
	$TimePoint = Get-Date -Hour 11 -Minute 0 -Second 0
        $Now = [DateTime]::Now
        if ($Now -lt $TimePoint) {
               $TimeSpan = TimeSpanToString($TimePoint - $Now)
		& "$PSScriptRoot/_reply.ps1" "OK, in $TimeSpan."
		& "$PSScriptRoot/_set-reminder.ps1" "It's 11 AM now." "$TimePoint"
	} else {
        	$TimeSpan = TimeSpanToString($Now - $TimePoint)
		& "$PSScriptRoot/_reply.ps1" "Sorry, 11 AM was $TimeSpan ago."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
