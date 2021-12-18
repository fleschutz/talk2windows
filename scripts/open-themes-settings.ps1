<#
.SYNOPSIS
	Opens Windows themes settings 
.DESCRIPTION
	This PowerShell script launches the Windows themes settings.
.EXAMPLE
	PS> ./open-themes-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:themes
exit 0 # success
