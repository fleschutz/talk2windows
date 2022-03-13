<#
.SYNOPSIS
	Opens the Activation settings of Windows
.DESCRIPTION
	This PowerShell script launches the activation settings of Windows.
.EXAMPLE
	PS> ./open-activation-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:activation
exit 0 # success
