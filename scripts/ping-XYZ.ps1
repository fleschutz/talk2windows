<#
.SYNOPSIS
	Ping a Host
.DESCRIPTION
	This PowerShell script checks the ping latency from the local computer to the given host.
.PARAMETER Hostname
	Specifies the hostname or IP address
.EXAMPLE
	PS> ./ping-XYZ
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Hostname = "")

try {
	& "$PSScriptRoot/_reply.ps1" "OK."

	$Pings = test-connection -count 1 -computerName $Hostname
        if ($Pings.count -eq 0) {
                & "$PSScriptRoot/_reply.ps1" "Sorry, $Hostname is offline."
        } else {
                foreach($Ping in $Pings) {
                        if ($IsLinux) {
                                $Latency = $Ping.latency
                        } else {
                                $Latency = $Ping.ResponseTime
                        }
                }
                & "$PSScriptRoot/_reply.ps1" "$Hostname is online with $Latency ms latency."
        }
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
