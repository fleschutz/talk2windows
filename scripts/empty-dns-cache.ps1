<#
.SYNOPSIS
	Empty the DNS cache
.DESCRIPTION
	This PowerShell script empties the DNS (domain name system) client cache.
#>

try {
	Clear-DnsClientCache
	& "$PSScriptRoot/say.ps1" "DNS cache is empty now."	
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
