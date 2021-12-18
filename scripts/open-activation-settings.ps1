<#
.SYNOPSIS
	Opens Windows activation settings 
.DESCRIPTION
	This PowerShell script launches the Windows activation settings.
.EXAMPLE
	PS> ./open-activation-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:activation
exit 0 # success
