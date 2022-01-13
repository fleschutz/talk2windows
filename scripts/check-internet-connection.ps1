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
	& "$PSScriptRoot/_reply.ps1" "Just a moment..."

	$HostsArray = $hosts.Split(",")
	$Pings = test-connection -count 1 -computerName $HostsArray
	if ($Pings.count -eq 0) {
		& "$PSScriptRoot/_reply.ps1" "You are offline."
	} else {
		& "$PSScriptRoot/_reply.ps1" "You are online."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
