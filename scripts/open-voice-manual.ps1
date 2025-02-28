<#
.SYNOPSIS
	Opens the voice manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the voice commands manual.
#>

& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" "https://github.com/fleschutz/talk2windows"
