<#
.SYNOPSIS
	Shows the ATTower manual
.DESCRIPTION
	This script launches the Web browser with the ATTower manual.
.EXAMPLE
	PS> ./show-tower-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://ufa365-my.sharepoint.com/personal/markus_fleschutz_atcsim_de/_layouts/15/onedrive.aspx?id=%2Fsites%2FProductManuals%2FShared%20Documents%2FATTower&listurl=https%3A%2F%2Fufa365%2Esharepoint%2Ecom%2Fsites%2FProductManuals%2FShared%20Documents&viewid=52ccd99a%2D45b8%2D4a68%2D852d%2D0ba5ac10ef63"
exit 0 # success
