<#
.SYNOPSIS
	Opens Windows proxy settings 
.DESCRIPTION
	This script launches the Windows proxy settings.
.EXAMPLE
	PS> ./open-proxy-settings
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:network-proxy
exit 0 # success
