<#
.SYNOPSIS
	SSH-login into a Host
.DESCRIPTION
	This PowerShell script does a SSH login into the given host.
.EXAMPLE
	PS> ./ssh-into-XYZ alpha
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Hostname = "")

try {
	if ($Hostname -eq "") { throw "No host name or IP address given" }

	& "$PSScriptRoot/open-windows-terminal.ps1" "ssh $Hostname"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
