<#
.SYNOPSIS
	Checks the Ping Time
.DESCRIPTION
	This PowerShell script checks the ping latency from the local computer to selected Internet hosts.
#>

param()

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."

	$hosts = "bing.com,cnn.com,dropbox.com,github.com,google.com,ibm.com,live.com,meta.com,x.com,youtube.com"
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
	& "$PSScriptRoot/_reply.ps1" "Ping latency is from $($Min)ms min to $($Max)ms max, average is $($Avg)ms."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
