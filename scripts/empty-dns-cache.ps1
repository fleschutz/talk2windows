<#
.SYNOPSIS
	Empty the DNS cache
.DESCRIPTION
	This PowerShell script empties the DNS (domain name system) client cache.
.EXAMPLE
	PS> ./empty-dns-cache
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	Clear-DnsClientCache
	& "$PSScriptRoot/_reply.ps1" "DNS cache is empty now."	
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
