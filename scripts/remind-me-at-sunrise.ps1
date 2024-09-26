<#
.SYNOPSIS
	Sets a Reminder on Sunrise
.DESCRIPTION
	This PowerShell script displays a reminder popup message on sunrise.
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
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$String = (Invoke-WebRequest http://wttr.in/?format="%S" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunrise = Get-Date -Hour $Hour -Minute $Minute -Second $Second
        $Now = [DateTime]::Now
        if ($Now -lt $Sunrise) {
               $TimeSpan = TimeSpanToString($Sunrise - $Now)
		& "$PSScriptRoot/say.ps1" "OK, in $TimeSpan at $($Sunrise.ToShortTimeString())."
		& "$PSScriptRoot/_set-reminder.ps1" "Sunrise is now." "$Sunrise"
	} else {
        	$TimeSpan = TimeSpanToString($Now - $Sunrise)
		& "$PSScriptRoot/say.ps1" "Sorry, sunrise was $TimeSpan ago at $($Sunrise.ToShortTimeString())."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
