<#
.SYNOPSIS
	Sets a Reminder at XYZ PM
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's XYZ PM.
#>

param([int]$number)

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
	$TimePoint = Get-Date -Hour (12 + $number) -Minute 0 -Second 0
        $Now = [DateTime]::Now
        if ($Now -lt $TimePoint) {
               $TimeSpan = TimeSpanToString($TimePoint - $Now)
		& "$PSScriptRoot/say.ps1" "OK, in $TimeSpan."
		& "$PSScriptRoot/_set-reminder.ps1" "It's exactly $number PM." "$TimePoint"
	} else {
        	$TimeSpan = TimeSpanToString($Now - $TimePoint)
		& "$PSScriptRoot/say.ps1" "Sorry, $number PM was $TimeSpan ago."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
