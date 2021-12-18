<#
.SYNOPSIS
	Shows the Tether rate 
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the Tether cryptocurrency exchange rate.
.EXAMPLE
	PS> ./show-tether-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://crypto.com/price/tether"
exit 0 # success
