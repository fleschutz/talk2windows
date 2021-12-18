<#
.SYNOPSIS
	Shows the Bitcoin rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the Bitcoin cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-bitcoin-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://crypto.com/price/bitcoin"
exit 0 # success
