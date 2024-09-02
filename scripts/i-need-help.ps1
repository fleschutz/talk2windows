<#
.SYNOPSIS
	Shows the Talk2Windows Manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the voice manual for Talk2Windows.
#>

& "$PSScriptRoot/_reply.ps1" "Just a second."
& "$PSScriptRoot/open-browser.ps1" "https://github.com/fleschutz/talk2windows"
