<#
.SYNOPSIS
	Logs into a Host
.DESCRIPTION
	This PowerShell script logs into the given host by SSH.
.EXAMPLE
	PS> ./log-into-XYZ alpha
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Hostname = "")

try {
	if ($Hostname -eq "") { throw "No host given" }

	& "$PSScriptRoot/open-windows-terminal.ps1" "ssh $Hostname"
	exit 0 # success
} catch {
	Reply "Sorry: $($Error[0])"
	exit 1
}
