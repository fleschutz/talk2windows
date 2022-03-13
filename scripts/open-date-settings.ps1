<#
.SYNOPSIS
	Opens the date & time settings of Windows
.DESCRIPTION
	This PowerShell script launches the date & time settings of Windows.
.EXAMPLE
	PS> ./open-date-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:dateandtime
exit 0 # success
