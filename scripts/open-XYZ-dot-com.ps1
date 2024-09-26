<#
.SYNOPSIS
	Opens XYZ.com
.DESCRIPTION
	This PowerShell script launches the Web browser with the given .com website.
#>

param([string]$name = "")

& "$PSScriptRoot/open-browser.ps1" "https://www.$($name).com"
