<#
.SYNOPSIS
	Opens Windows apps settings 
.DESCRIPTION
	This PowerShell script launches the Windows aps settings.
.EXAMPLE
	PS> ./open-apps-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:appsfeatures
exit 0 # success
