<#
.SYNOPSIS
	Checks the DNS resolution 
.DESCRIPTION
	This PowerShell script checks the DNS resolution with frequently used domain names.
.EXAMPLE
	PS> ./check-dns
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>
 
try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."

	$StopWatch = [system.diagnostics.stopwatch]::startNew()
	$PathToRepo = "$PSScriptRoot/.."
	$Table = Import-CSV "$PathToRepo/data/domain-names.csv"

	foreach($Row in $Table) {
		if ($IsLinux) {
			$Ignore = nslookup $Row.Domain
		} else {
			$Ignore = resolve-dnsName $Row.Domain
		}
	}
	[int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
	$Average = [math]::round($Table.Length / $Elapsed, 1)

	& "$PSScriptRoot/_reply.ps1" "$Average domains per second DNS resolution"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
