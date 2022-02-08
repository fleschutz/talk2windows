<#
.SYNOPSIS
	Ping a host
.DESCRIPTION
	This PowerShell script checks the ping latency from the local computer to the given host.
.EXAMPLE
	PS> ./ping-XYZ host123
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "", [string]$Part4 = "")

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	$Hostname = "$Part1$Part2$Part3$Part4"
	$Hostname = $Hostname -replace " ",""

	$Pings = Test-Connection -count 1 -computerName $Hostname
        if ($Pings.count -eq 0) {
                $Reply = "Sorry, '$Hostname' is offline."
        } else {
                foreach($Ping in $Pings) {
                        if ($IsLinux) { $Latency = $Ping.latency } else { $Latency = $Ping.ResponseTime }
                }
                $Reply = "'$Hostname' is online with $Latency ms latency."
        }
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
