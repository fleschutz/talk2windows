<#
.SYNOPSIS
	Checks the Ping Time
.DESCRIPTION
	This PowerShell script checks the ping latency from the local computer to selected Internet hosts.
.EXAMPLE
	PS> ./check-ping
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param()

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."

	$hosts = "amazon.com,bing.com,cnn.com,dropbox.com,facebook.com,google.com,live.com,twitter.com,youtube.com"
	$HostsArray = $hosts.Split(",")
	$Pings = Test-Connection -count 1 -computerName $HostsArray

	[int]$Min = 9999999
	[int]$Max = 0
	[int]$Avg = 0
	foreach($Ping in $Pings) {
		[int]$Latency = $Ping.ResponseTime
		if ($Latency -lt $Min) { $Min = $Latency }
		if ($Latency -gt $Max) { $Max = $Latency }
		$Avg += $Latency
	}
	$Avg = $Avg / $Pings.count
	& "$PSScriptRoot/_reply.ps1" "Ping is $($Avg)ms average, ($($Min)ms min, $($Max)ms max."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
