<#
.SYNOPSIS
	Replies to 'When is president's day?'
.DESCRIPTION
	This PowerShell script replies to 'When is president's day?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-presidents-day
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function Find-WeekDayMultiple ($year, $month, $dayOfWeek, $multiple) {
    $result = Get-Date -Year $year -Month $month -Day 1
    $multipleCount = 0

    do {
        if ($result.DayOfWeek -eq $dayOfWeek) {
            $multipleCount++
        }

        $result = $result.AddDays(1)

        if ($result.Month -ne $month) {
            throw "Could not find weekday multiple."
        }
    }
    while ($multipleCount -lt $multiple)

    return $result.AddDays(-1)
}


try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$Today = Get-Date 
	$PresidentsDay = Find-WeekDayMultiple $Today.Year 2 "Monday" 3
	
	if ($Today -lt $PresidentsDay) {
		$Days = (New-TimeSpan -start $Today -end $PresidentsDay).Days
		if ($Days -eq 0) {
			& "$PSScriptRoot/say.ps1" "Today is President's day!"
		} elseif ($Days -eq 1) {
			& "$PSScriptRoot/say.ps1" "President's day is tomorrow."
		} else {
			& "$PSScriptRoot/say.ps1" "President's day on $($PresidentsDay.ToShortDateString()) is in $Days days."
		}
	} else {
		$Days = (New-TimeSpan -start $PresidentsDay -end $Today).Days
		if ($Days -eq 1) {
			& "$PSScriptRoot/say.ps1" "President's day was yesterday."
		} else {
			& "$PSScriptRoot/say.ps1" "President's day on $($PresidentsDay.ToShortDateString()) was $Days days ago."
		}
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
