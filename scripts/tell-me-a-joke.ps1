<#
.SYNOPSIS
	Tells a joke
.DESCRIPTION
	This PowerShell script tells a random Chuck Norris joke from data/jokes.csv by text-to-speech (TTS).
#>

try {
	$Table = Import-CSV "$PSScriptRoot/data/jokes.csv"

	$Generator = New-Object System.Random
	$Index = [int]$Generator.next(0, $Table.Count - 1)
	$reply = $Table[$Index].Joke
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
