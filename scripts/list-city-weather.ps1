<#
.SYNOPSIS
	Lists current weather of cities world-wide 
.DESCRIPTION
	This PowerShell script lists the current weather of cities world-wide (west to east).
#> 

$Cities="Hawaii","Los Angeles","Mexico City","Dallas","Miami","New York","Rio de Janeiro","Paris","London","Berlin","Cape Town","Dubai","Mumbai","Singapore","Hong Kong","Perth","Peking","Tokyo","Sydney"

function ListCityWeather {
	foreach($City in $Cities) {
		$Conditions = (Invoke-WebRequest http://wttr.in/${City}?format="%c  +%t`t+%p`t+%h`t+%P  +%w" -UserAgent "curl" -useBasicParsing).Content
		$Sun = (Invoke-WebRequest http://wttr.in/${City}?format="+%S →+%s" -UserAgent "curl" -useBasicParsing).Content
		New-Object PSObject -Property @{ City="$City"; Conditions="$Conditions"; Sun="$Sun" }
	}
}
try {
	& "$PSScriptRoot/say.ps1" "OK."
	ListCityWeather | Select-Object -property City,Conditions,Sun | Out-GridView -title "Current City Weather (from West to East)" -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
