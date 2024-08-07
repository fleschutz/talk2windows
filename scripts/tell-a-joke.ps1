<#
.SYNOPSIS
	Tells a joke
.DESCRIPTION
	This PowerShell script tells a random Chuck Norris joke from data/jokes.csv by text-to-speech (TTS).
.EXAMPLE
	PS> ./tell-me-a-joke
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Table = import-csv "$PSScriptRoot/../data/jokes.csv"

	$Generator = New-Object System.Random
	$Index = [int]$Generator.next(0, $Table.Count - 1)
	$Reply = $Table[$Index].Joke

	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
