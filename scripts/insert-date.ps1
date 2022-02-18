<#
.SYNOPSIS
	Insert the Date
.DESCRIPTION
	This PowerShell script inserts the current date.
.EXAMPLE
	PS> ./insert-date
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."

        [system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
        $Weekday = (Get-Date -format "dddd")
        $CurrentDate = (Get-Date).ToShortDateString()
        $Today = "$Weekday, $CurrentDate"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("$Today")
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
