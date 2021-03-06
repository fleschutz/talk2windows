<#
.SYNOPSIS
	Shows the Ether rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the Ether cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-ether-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://crypto.com/price/ethereum"
exit 0 # success
