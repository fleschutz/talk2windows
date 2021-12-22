<#
.SYNOPSIS
	Tells a quote
.DESCRIPTION
	This PowerShell script tells a random quote from data/quotes.csv by text-to-speech (TTS).
.EXAMPLE
	PS> ./tell-me-a-quote
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Table = import-csv "$PSScriptRoot/../data/quotes.csv"

	$Generator = New-Object System.Random
	$Index = [int]$Generator.next(0, $Table.Count - 1)
	$Quote = $Table[$Index].Quote
	$Author = $Table[$Index].Author
	$Reply = "$Quote (by $Author)"

	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
