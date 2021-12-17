<#
.SYNOPSIS
	Shows the Ether rate 
.DESCRIPTION
	This script launches the Web browser and shows the Ether cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-ether-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://crypto.com/price/ethereum"
exit 0 # success
