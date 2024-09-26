<#
.SYNOPSIS
	Checks the Tether rate
.DESCRIPTION
	This PowerShell script queries the current Tether exchange rates and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-tether-rate
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Rates = (Invoke-WebRequest -uri "https://min-api.cryptocompare.com/data/price?fsym=USDT&tsyms=USD,EUR" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json

	& "$PSScriptRoot/say.ps1" "Tether is now at $($Rates.USD) US$ or $($Rates.EUR) Euro."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
