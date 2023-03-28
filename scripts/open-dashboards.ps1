<#
.SYNOPSIS
	Open dashboards
.DESCRIPTION
	This PowerShell script launches the Web browser with some dashboard websites.
.EXAMPLE
	PS> ./open-dashboards
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	& "$PSScriptRoot/open-browser.ps1" https://track.toggl.com/timer
	& "$PSScriptRoot/open-browser.ps1" https://news.google.com
	& "$PSScriptRoot/open-browser.ps1" https://www.windy.com/de/-Wetterradar-radar
	& "$PSScriptRoot/open-browser.ps1" https://www.arcgis.com/apps/dashboards/c8af9c5411814584b460cc87cb7c3780
	& "$PSScriptRoot/open-browser.ps1" https://radio.garden/visit/kempten/V5Ryr1S4
	& "$PSScriptRoot/open-browser.ps1" https://www.foto-webcam.eu/
	& "$PSScriptRoot/open-browser.ps1" https://sunnyportal.com/FixedPages/Dashboard.aspx
	& "$PSScriptRoot/open-browser.ps1" https://covid19.who.int/
	& "$PSScriptRoot/open-browser.ps1" https://top10.netflix.com/
	exit 0 # success
} catch {
	 & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
