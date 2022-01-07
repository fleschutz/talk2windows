<#
.SYNOPSIS
	Launches Mp3tag
.DESCRIPTION
	This PowerShell script launches the Mp3tag application.
.EXAMPLE
	PS> ./open-mp-three-tag
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$App = Get-AppxPackage -Name "*Mp3tag*"
	if ($App.Status -ne "Ok") { throw "MP3 tag isn't installed yet." }
	Start-Process shell:appsFolder\$($App.PackageFamilyName)!Mp3tag
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
