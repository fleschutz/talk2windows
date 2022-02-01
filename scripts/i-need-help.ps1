<#
.SYNOPSIS
	Shows the Manual for Talk2Windows
.DESCRIPTION
	This PowerShell script launches the Web browser with the manual for Talk2Windows.
.EXAMPLE
	PS> ./i-need-help
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Okay.", "Hold on.", "Just a second.", "Help is on the way." | Get-Random
& "$PSScriptRoot/_reply.ps1" $Reply

& "$PSScriptRoot/open-browser.ps1" "https://github.com/fleschutz/talk2windows"
exit 0 # success
