<#
.SYNOPSIS
	Opens the background settings of Windows
.DESCRIPTION
	This PowerShell script launches the background settings of Windows.
.EXAMPLE
	PS> ./open-background-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:personalization-background
exit 0 # success
