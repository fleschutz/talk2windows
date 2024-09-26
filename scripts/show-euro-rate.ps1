<#
.SYNOPSIS
	Shows the Euro rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the Euro (EUR/€) rate.
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.bitstamp.net/markets/eur/usd/"
