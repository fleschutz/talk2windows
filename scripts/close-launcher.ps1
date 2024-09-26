<#
.SYNOPSIS
	Closes Launcher
.DESCRIPTION
	This PowerShell script closes the Launcher application gracefully.
.EXAMPLE
	PS> ./close-launcher
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/say.ps1" "Okay."
tskill Launcher
