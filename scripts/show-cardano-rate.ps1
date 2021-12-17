<#
.SYNOPSIS
	Shows the Cardano rate 
.DESCRIPTION
	This script launches the Web browser and shows the Cardano cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-cardano-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://crypto.com/price/cardano"
exit 0 # success
