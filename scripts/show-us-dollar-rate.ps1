<#
.SYNOPSIS
	Shows the US$ rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the US Dollar (USD/US$) rate.
.EXAMPLE
	PS> ./show-us-dollar-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.bitstamp.net/markets/eur/usd"
exit 0 # success
