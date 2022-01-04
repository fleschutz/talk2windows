<#
.SYNOPSIS
	Launches the Cortana app
.DESCRIPTION
	This PowerShell script launches the Cortana application.
.EXAMPLE
	PS> ./open-cortana
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start-process ms-cortana2:
exit 0 # success
