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
	& "$PSScriptRoot/_reply.ps1" "Hold on."

	$URLs = @("https://track.toggl.com/timer", "https://news.google.com", "https://www.windy.com/de/-Wetterradar-radar",
		"https://www.flightradar24.com/27.63,-6.98/3","https://www.arcgis.com/apps/dashboards/c8af9c5411814584b460cc87cb7c3780",
		"https://www.foto-webcam.eu", "https://zugspitze.panomax.com", "https://livecam.salzburg-airport.com",
		"https://sunnyportal.com/FixedPages/Dashboard.aspx", "https://covid19.who.int", "https://top10.netflix.com")
	foreach($URL in $URLs) {
		& "$PSScriptRoot/open-browser.ps1" "$URL"
		Start-Sleep -milliseconds 100
	}
	exit 0 # success
} catch {
	 & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
