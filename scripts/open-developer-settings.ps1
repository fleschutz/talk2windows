<#
.SYNOPSIS
	Opens the developer settings of Windows
.DESCRIPTION
	This PowerShell script launches the developer settings of Windows.
.EXAMPLE
	PS> ./open-developer-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:developers
exit 0 # success
