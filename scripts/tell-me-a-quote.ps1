<#
.SYNOPSIS
	Tells a quote
.DESCRIPTION
	This PowerShell script tells a random quote from data/quotes.csv by text-to-speech (TTS).
#>

try {
	$table = Import-CSV "$PSScriptRoot/data/quotes.csv"
	$generator = New-Object System.Random
	$index = [int]$generator.next(0, $table.Count - 1)
	$quote = $table[$index].QUOTE
	$Author = $table[$index].AUTHOR
	$reply = "$quote (by $author)"
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
