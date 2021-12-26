<#
.SYNOPSIS
	Checks the Time of Sunrise
.DESCRIPTION
	This PowerShell script queries the time of sunrise and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-sunrise
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TimeSpanToString { param([TimeSpan]$Delta)
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
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$String = (Invoke-WebRequest http://wttr.in/?format="%S" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunrise = Get-Date -Hour $Hour -Minute $Minute -Second $Second
	$Now = [DateTime]::Now
	if ($Now -lt $Sunrise) {
                $TimeSpan = TimeSpanToString($Sunrise - $Now)
                $Reply = "Sunrise is in $TimeSpan at $($Sunrise.ToShortTimeString())."
        } else {
                $TimeSpan = TimeSpanToString($Now - $Sunrise)
                $Reply = "Sunrise was $TimeSpan ago at $($Sunrise.ToShortTimeString())."
        }
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
