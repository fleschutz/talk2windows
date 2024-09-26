<#
.SYNOPSIS
	Insert the Date
.DESCRIPTION
	This PowerShell script inserts the current date.
#>

try {
        [system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
        $Weekday = (Get-Date -format "dddd")
        $CurrentDate = (Get-Date).ToShortDateString()
        $Today = "$Weekday, $CurrentDate"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("$Today")

	& "$PSScriptRoot/say.ps1" "Date inserted."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
