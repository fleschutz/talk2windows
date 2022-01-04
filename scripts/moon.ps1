<#
.SYNOPSIS
	Prints the current moon phase
.DESCRIPTION
	This PowerShell script prints the current moon phase.
.EXAMPLE
	PS> ./moon
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	(Invoke-WebRequest http://wttr.in/Moon -userAgent "curl" -useBasicParsing).Content
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
