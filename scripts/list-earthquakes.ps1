<#
.SYNOPSIS
	Lists Major Earthquakes
.DESCRIPTION
	This script lists earthquakes with magnitude >= 5.0 in the last 30 days.
.EXAMPLE
	PS> ./list-earthquakes
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Format="csv" # csv, geojson, kml, text, xml
$MinMagnitude=5.0
$OrderBy="magnitude" # time, time-asc, magnitude, magnitude-asc

function ListEarthquakes { 
	$Quakes = (invoke-webRequest -uri "https://earthquake.usgs.gov/fdsnws/event/1/query?format=$Format&minmagnitude=$MinMagnitude&orderby=$OrderBy" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-CSV
	foreach ($Quake in $Quakes) {
		new-object PSObject -Property @{ Mag=$Quake.mag; Depth=$Quake.depth; Location=$Quake.place; Type=$Quake.type; Time=$Quake.time; ID=$Quake.id; Lat=$Quake.latitude; Long=$Quake.longitude }
	}
}
 
try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."
	ListEarthquakes | Select-Object -property Mag,Depth,Location,Type,Time,ID,Lat,Long | Out-GridView -title "Earthquakes with magnitude >= 5.0 in the last 30 days" -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
