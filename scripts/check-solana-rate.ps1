<#
.SYNOPSIS
	Checks the Solana rate
.DESCRIPTION
	This PowerShell script queries the current Solana exchange rates and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-solana-rate
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Rates = (Invoke-WebRequest -uri "https://min-api.cryptocompare.com/data/price?fsym=SOL&tsyms=USD,EUR" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$USD = [math]::round($Rates.USD)
	$EUR = [math]::round($Rates.EUR)
	& "$PSScriptRoot/say.ps1" "Solana is now at $USD US$ or $EUR Euro."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
