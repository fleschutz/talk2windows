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
	$String = (Invoke-WebRequest http://wttr.in/?format="%s" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunset = Get-Date -Hour $Hour -Minute $Minute -Second $Second
        $Now = [DateTime]::Now
        if ($Now -lt $Sunset) {
               $TimeSpan = TimeSpanToString($Sunset - $Now)
		& "$PSScriptRoot/say.ps1" "OK, in $TimeSpan at $($Sunset.ToShortTimeString())."
		& "$PSScriptRoot/_set-reminder.ps1" "Sunset is now." "$Sunset"
	} else {
        	$TimeSpan = TimeSpanToString($Now - $Sunset)
		& "$PSScriptRoot/say.ps1" "Sorry, sunset was $TimeSpan ago at $($Sunset.ToShortTimeString())."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
