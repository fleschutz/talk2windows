<#
.SYNOPSIS
	Lists Major Earthquakes
.DESCRIPTION
	This script lists earthquakes with magnitude >= 6.0 within the last 30 days.
.EXAMPLE
	PS> ./list-earthquakes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Format="csv" # csv, geojson, kml, text, xml
$MinMagnitude=5.8
$OrderBy="magnitude" # time, time-asc, magnitude, magnitude-asc

function ListEarthquakes { 
	$Earthquakes = (invoke-webRequest -uri "https://earthquake.usgs.gov/fdsnws/event/1/query?format=$Format&minmagnitude=$MinMagnitude&orderby=$OrderBy" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-CSV
	foreach ($Quake in $Earthquakes) {
		new-object PSObject -Property @{ Mag=$Quake.mag; Depth=$Quake.depth; Location=$Quake.place; Time=$Quake.time }
	}
}
 
try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	ListEarthquakes | Out-GridView
	sleep 600
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
