<#
.SYNOPSIS
	Shows the British Pound rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the British Pound (GBP) rate.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.bitstamp.net/markets/gbp/usd/"
