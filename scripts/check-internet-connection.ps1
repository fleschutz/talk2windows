<#
.SYNOPSIS
	Checks the Internet Connection
.DESCRIPTION
	This PowerShell script checks the Internet connection.
.PARAMETER hosts
	Specifies the hosts to check (separated by comma)
.EXAMPLE
	PS> ./check-internet-connection
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$hosts = "google.com")

try {
	& "$PSScriptRoot/say.ps1" "OK..."

	$HostsArray = $hosts.Split(",")
	$Pings = test-connection -count 1 -computerName $HostsArray
	if ($Pings.count -eq 0) {
		& "$PSScriptRoot/say.ps1" "Sorry, you're offline."
	} else {
		foreach($Ping in $Pings) {
                	if ($IsLinux) {
                        	$Latency = $Ping.latency
               		} else {
                        	$Latency = $Ping.ResponseTime
                	}
		}
		& "$PSScriptRoot/say.ps1" "You're online with $Latency ms latency."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
