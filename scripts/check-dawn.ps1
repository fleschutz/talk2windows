<#
.SYNOPSIS
	Checks the time of dawn 
.DESCRIPTION
	This PowerShell script queries the time of dawn and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-dawn
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
	$String = (Invoke-WebRequest http://wttr.in/?format="%D" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $String -split ':'
	$Dawn = Get-Date -Hour $Hour -Minute $Minute -Second $Second
	$Now = [DateTime]::Now
	if ($Now -lt $Dawn) {
                $TimeSpan = TimeSpanToString($Dawn - $Now)
                $Reply = "Dawn is in $TimeSpan at $($Dawn.ToShortTimeString())."
        } else {
                $TimeSpan = TimeSpanToString($Now - $Dawn)
                $Reply = "Dawn was $TimeSpan ago at $($Dawn.ToShortTimeString())."
        }
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
