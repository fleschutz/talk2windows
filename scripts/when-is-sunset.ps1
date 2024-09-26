<#
.SYNOPSIS
	Replies to 'When is sunset?"
.DESCRIPTION
	This PowerShell script replies to 'When is sunset?' by text-to-speech (TTS).
#>

function GetTimeSpan { param([TimeSpan]$delta)
	$ret = ""
	if ($delta.Hours -eq 1) {       $ret += "1 hour and "
	} elseif ($delta.Hours -gt 1) { $ret += "$($delta.Hours) hours and "
	}
	if ($delta.Minutes -eq 1) { $ret += "1 minute"
	} else {                    $ret += "$($delta.Minutes) minutes"
	}
	return $ret
}

try {
	[system.threading.thread]::currentThread.currentCulture=[system.globalization.cultureInfo]"en-US"
	$string = (Invoke-WebRequest -URI http://wttr.in/?format="%s" -UserAgent "curl" -useBasicParsing).Content
	$Hour,$Minute,$Second = $string -split ':'
	$Sunset = Get-Date -Hour $Hour -Minute $Minute -Second $Second
	$now = [DateTime]::Now
	if ($now -lt $Sunset) {
                $timeSpan = GetTimeSpan($Sunset - $now)
                & "$PSScriptRoot/say.ps1" "Sunset is in $timeSpan at $($Sunset.ToShortTimeString())."
        } else {
                $timeSpan = GetTimeSpan($now - $Sunset)
                & "$PSScriptRoot/say.ps1" "Sunset was $timeSpan ago at $($Sunset.ToShortTimeString())."
        }
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
