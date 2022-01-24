<#
.SYNOPSIS
	Lists current weather of cities world-wide 
.DESCRIPTION
	This PowerShell script lists the current weather of cities world-wide (west to east).
.EXAMPLE
	PS> ./list-city-weather
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#> 

$Cities="Hawaii","Los Angeles","Mexico City","Miami","New York","Rio de Janeiro","Paris","London","Berlin","Cape Town","Dubai","Mumbai","Singapore","Hong Kong","Peking","Tokyo","Sydney"

function ListCityWeather {
	foreach($City in $Cities) {
		$Line = (Invoke-WebRequest http://wttr.in/${City}?format="%c +%t+%p+%h+%P+%w +%S →+%s" -UserAgent "curl" -useBasicParsing).Content
		New-Object PSObject -Property @{ City="$City"; Weather="$Line" }
	}
}
try {
	ListCityWeather | Select-Object -property City,Weather | Out-GridView -title "Current City Weather (west to east)" -wait
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
