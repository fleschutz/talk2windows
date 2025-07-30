<#
.SYNOPSIS
	Wake up a Computer
.DESCRIPTION
	This PowerShell script sends a magic UDP packet twice to the given computer to wake him up (requires Wake-On-LAN).
.PARAMETER Hostname
	Specifies the hostname
.EXAMPLE
	PS> ./wakeup-XYZ.ps1 MYPC
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "")
	
function Send-WOL { param([string]$mac, [string]$ip, [int]$port = 9) 
	$broadcast = [Net.IPAddress]::Parse($ip) 
  
	$mac=(($mac.replace(":","")).replace("-","")).replace(".","") 
	$target=0,2,4,6,8,10 | % {[convert]::ToByte($mac.substring($_,2),16)} 
	$packet = (,[byte]255 * 6) + ($target * 16) 
  
	$UDPclient = new-Object System.Net.Sockets.UdpClient 
	$UDPclient.Connect($broadcast,$port) 
	[void]$UDPclient.Send($packet, 102)  
} 

try {
	$Hostname = "$($Part1)$($Part2)$($Part3)"
	$Ping = Test-Connection -count 1 -computerName $Hostname
        if ($Ping.count -ne 0) {
		& "$PSScriptRoot/say.ps1" "$Hostname is already up and running."
		exit 0 # success
	}

	$Table = Import-CSV "$PSScriptRoot/data/hosts.csv"
	foreach($Row in $Table) {
		if ($Hostname -ne $Row.Hostname) { continue }
		& "$PSScriptRoot/say.ps1" "Trying to wake up $Hostname ..."
		Send-WOL $Row.MAC $Row.IPv4
		start-sleep -milliseconds 100
		Send-WOL $Row.MAC $Row.IPv4
		start-sleep -milliseconds 100
		Send-WOL $Row.MAC $Row.IPv4
		$Pings = test-connection -count 1 -computerName $Hostname
        	if ($Pings.count -ne 0) {
			& "$PSScriptRoot/say.ps1" "$Hostname is up."
		}
		exit 0 # success
	}
	throw "Computer $Hostname is unknown to me."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
