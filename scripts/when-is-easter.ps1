<#
.SYNOPSIS
	Replies to 'When is easter?"
.DESCRIPTION
	This PowerShell script replies to 'When is easter?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-easter
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$Now = [DateTime]::Now
	$Year = $Now.Year

	# Easter is at first Sunday after the first full moon at or after the Spring equinox (21 March)
	# Calculation explained: https://www.timeanddate.com/calendar/determining-easter-date.html
	Set-Variable -Name ReferenceFullMoon -Option Constant -Value $( Get-Date -Date '2022-01-17 23:48' ) -ErrorAction Ignore
	Set-Variable -Name MoonCycleDays     -Option Constant -Value 29.53                                  -ErrorAction Ignore

	# For Easter calculations, the Spring equinox is always assumed to be at 21 March
	$SpringEquinox = $( Get-Date -Date "$Year-03-21" ) # 21 March

	# Calculate full moon cycles to first full moon after Spring equinox of specified year
	$FullCycles = [Math]::Ceiling( ( New-TimeSpan -Start $ReferenceFullMoon -End $SpringEquinox ).Days / $MoonCycleDays )

	# Date of first full moon after Spring equinox of specified year
	$FullMoonAfterEquinox = $ReferenceFullMoon.AddDays( $FullCycles * $MoonCycleDays )

	# First Sunday following first full moon at or after Spring equinox of specified year
	$EasterSunday = $FullMoonAfterEquinox.AddDays( 7 - [int]$FullMoonAfterEquinox.DayOfWeek ).Date

	if ($Now -lt $EasterSunday) {
		$Diff = $EasterSunday - $Now
		$Reply = "Easter sunday on $($EasterSunday.ToShortDateString()) is in $($Diff.Days) days."
	} else {
		$Diff = $Now - $EasterSunday
		$Reply = "Easter sunday on $($EasterSunday.ToShortDateString()) was $($Diff.Days) days ago."
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
