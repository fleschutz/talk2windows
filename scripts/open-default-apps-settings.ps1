<#
.SYNOPSIS
	Opens Windows default apps settings 
.DESCRIPTION
	This PowerShell script launches the Windows default apps settings.
.EXAMPLE
	PS> ./open-default-apps-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:defaultapps
exit 0 # success
