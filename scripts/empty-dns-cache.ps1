<#
.SYNOPSIS
	Empty the DNS cache
.DESCRIPTION
	This PowerShell script empties the DNS (domain name system) cache.
.EXAMPLE
	PS> ./empty-dns-cache
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	& ipconfig /flushdns
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
