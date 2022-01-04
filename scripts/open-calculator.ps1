<#
.SYNOPSIS
	Launches the calculator application
.DESCRIPTION
	This PowerShell script launches the calculator application.
.EXAMPLE
	PS> ./open-calculator
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start-process ms-calculator:
exit 0 # success
