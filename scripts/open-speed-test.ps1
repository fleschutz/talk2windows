<#
.SYNOPSIS
	Opens Cloudflare's Speed Test
.DESCRIPTION
	This PowerShell script launches the Web browser with Cloudflare's speed test website.
#>

& "$PSScriptRoot/open-browser.ps1" "https://speed.cloudflare.com"
