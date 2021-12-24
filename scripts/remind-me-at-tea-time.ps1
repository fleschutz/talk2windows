<#
.SYNOPSIS
	Sets a reminder when it's tea time
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's tea time.
.EXAMPLE
	PS> ./remind-me-at-tea-time
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
        $Now = [DateTime]::Now
        $TeaTime = Get-Date -Hour 16 -Minute 0 -Second 0
        if ($Now -lt $TeaTime) {
		& "$PSScriptRoot/_reply.ps1" "OK, at tea time."
		& "$PSScriptRoot/_set-reminder.ps1" "It's tea time." "$TeaTime"
	} else {
        	$TimeSpan = TimeSpanToString($Now - $TeaTime)
		& "$PSScriptRoot/_reply.ps1" "Sorry, tea time was $TimeSpan ago."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
