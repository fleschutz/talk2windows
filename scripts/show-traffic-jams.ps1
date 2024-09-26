<#
.SYNOPSIS
	Shows current traffic jams
.DESCRIPTION
	This PowerShell script launches the Web browser with MSN showing current traffic jams.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://www.msn.com/en-us/traffic?lvl=11&intent=roadClosures"
