<#
.SYNOPSIS
	Lists Major Earthquakes
.DESCRIPTION
	This PowerShell script lists major earthquakes worldwide in the past 30 days (sorted by magnitude).
.EXAMPLE
	PS> ./list-earthquakes
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
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
	& "$PSScriptRoot/say.ps1" "Hold on."
	ListEarthquakes | Select-Object -property Mag,Depth,Location,Type,Time,ID,Lat,Long | Out-GridView -title "Major earthquakes worldwide in the past 30 days (sorted by magnitude)" -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
