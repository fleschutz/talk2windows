<#
.SYNOPSIS
	Opens the lockscreen settings of Windows
.DESCRIPTION
	This PowerShell script launches the lockscreen settings of Windows.
.EXAMPLE
	PS> ./open-lockscreen-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Lockscreen..."
Start-Process ms-settings:lockscreen
exit 0 # success
