<#
.SYNOPSIS
	Replies to 'When is sunrise?'
.DESCRIPTION
	This PowerShell script replies to 'When is sunrise?' and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-sunrise
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
	$String = (Invoke-WebRequest http://wttr.in/?format="%S" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Sunrise = Get-Date -Hour $Hour -Minute $Minute -Second $Second
	$Now = [DateTime]::Now
	if ($Now -lt $Sunrise) {
                $TimeSpan = GetTimeSpan($Sunrise - $Now)
                $Reply = "Sunrise is in $TimeSpan at $($Sunrise.ToShortTimeString())."
        } else {
                $TimeSpan = GetTimeSpan($Now - $Sunrise)
                $Reply = "Sunrise was $TimeSpan ago at $($Sunrise.ToShortTimeString())."
        }
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
