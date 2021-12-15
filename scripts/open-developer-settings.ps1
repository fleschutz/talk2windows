<#
.SYNOPSIS
	Opens Windows developer settings 
.DESCRIPTION
	This script launches the Windows developer settings.
.EXAMPLE
	PS> ./open-developer-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:developers
exit 0 # success
