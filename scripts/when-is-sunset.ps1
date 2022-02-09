<#
.SYNOPSIS
	Replies to 'When is sunset?"
.DESCRIPTION
	This PowerShell script replies to 'When is sunset?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-sunset
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
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$String = (Invoke-WebRequest http://wttr.in/?format="%s" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunset = Get-Date -Hour $Hour -Minute $Minute -Second $Second
	$Now = [DateTime]::Now
	if ($Now -lt $Sunset) {
                $TimeSpan = GetTimeSpan($Sunset - $Now)
                $Reply = "Sunset is in $TimeSpan at $($Sunset.ToShortTimeString())."
        } else {
                $TimeSpan = GetTimeSpan($Now - $Sunset)
                $Reply = "Sunset was $TimeSpan ago at $($Sunset.ToShortTimeString())."
        }
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
