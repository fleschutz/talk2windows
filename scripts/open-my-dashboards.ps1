<#
.SYNOPSIS
	Open dashboards
.DESCRIPTION
	This PowerShell script launches the Web browser with some dashboard websites.
#>

$URLs = @("https://track.toggl.com/timer",
	"https://calendar.google.com/calendar/u/0/r/agenda",
	"https://mail.google.com/",
	"https://keep.google.com/",
	"https://photos.google.com/",
	"https://news.google.com",
	"https://outlook.office.com/mail/",
	"https://edition.cnn.com",
	"https://github.com/explore",
	"https://www.flightradar24.com/27.63,-6.98/3",
	"https://www.arcgis.com/apps/dashboards/c8af9c5411814584b460cc87cb7c3780",
	"https://threatmap.checkpoint.com",
	"https://www.msn.com/en-us/traffic?lvl=11&intent=roadClosures",
	"https://www.netflix.com/tudum/top10/",
	"https://charts.youtube.com/",
	"https://www.foto-webcam.eu",
	"https://zugspitze.panomax.com",
	"https://livecam.salzburg-airport.com",
	"https://www.flightradar24.com/data/airports/muc",
	"https://www.windy.com/de/-Weather-radar-radar",
	"https://www.windy.com/-Temperature-temp",
	"https://warnung.bund.de/meldungen")

try {
	& "$PSScriptRoot/say.ps1" "Okay."

	foreach($URL in $URLs) {
		& "$PSScriptRoot/open-browser.ps1" "$URL"
		Start-Sleep -milliseconds 100
	}
	exit 0 # success
} catch {
	 & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
