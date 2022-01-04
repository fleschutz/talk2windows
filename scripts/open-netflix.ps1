<#
.SYNOPSIS
	Launches the Netflix app
.DESCRIPTION
	This PowerShell script launches the Netflix application.
.EXAMPLE
	PS> ./open-netflix
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process netflix:
exit 0 # success
