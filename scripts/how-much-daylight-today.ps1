<#
.SYNOPSIS
	Replies to 'How much daylight today?'
.DESCRIPTION
	This PowerShell script replies to 'How much daylight today?' and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./how-much-daylight-today
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
	[system.threading.thread]::currentThread.currentCulture = [system.globalization.cultureInfo]"en-US"

	$String = (Invoke-WebRequest http://wttr.in/?format="%S" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunrise = Get-Date -Hour $Hour -Minute $Minute -Second $Second

        $String = (Invoke-WebRequest http://wttr.in/?format="%s" -UserAgent "curl" -useBasicParsing).Content
        $Hour,$Minute,$Second = $String -split ':'
        $Sunset = Get-Date -Hour $Hour -Minute $Minute -Second $Second

        $TimeSpan = GetTimeSpan($Sunset - $Sunrise)
        $Reply = "It's $TimeSpan between $($Sunrise.ToShortTimeString()) and $($Sunset.ToShortTimeString())."
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
