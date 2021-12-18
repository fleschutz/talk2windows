<#
.SYNOPSIS
	Tells a quote
.DESCRIPTION
	This PowerShell script selects a random quote in Data/quotes.csv and tells it by text-to-speech (TTS).
.EXAMPLE
	PS> ./tell-a-quote
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Table = import-csv "$PSScriptRoot/../Data/quotes.csv"

	$Generator = New-Object System.Random
	$Index = [int]$Generator.next(0, $Table.Count - 1)
	$Quote = $Table[$Index].Quote
	$Author = $Table[$Index].Author
	$Reply = "$Quote (by $Author)"

	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
