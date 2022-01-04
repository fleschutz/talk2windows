<#
.SYNOPSIS
	Launches the Firefox browser
.DESCRIPTION
	This PowerShell script launches the Mozilla Firefox Web browser.
.EXAMPLE
	PS> ./open-firefox
.PARAMETER URL
	Specifies an URL
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$URL = "http://www.fleschutz.de")

try {
	$App = Get-AppxPackage -Name Mozilla.FireFox
	if ($App.Status -eq "Ok") {
		# starting Firefox UWP app:
		explorer.exe shell:appsFolder\$($App.PackageFamilyName)!FIREFOX
	} else {
		# starting Firefox program:
		start-process firefox.exe "$URL"
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
