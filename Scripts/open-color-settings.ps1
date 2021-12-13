<#
.SYNOPSIS
	Opens Windows color settings 
.DESCRIPTION
	This script launches the Windows color settings.
.EXAMPLE
	PS> ./open-color-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:colors
exit 0 # success
