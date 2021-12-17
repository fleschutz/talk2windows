<#
.SYNOPSIS
	Shows the Solana rate 
.DESCRIPTION
	This script launches the Web browser and shows the Solana cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-solana-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://crypto.com/price/solana"
exit 0 # success
