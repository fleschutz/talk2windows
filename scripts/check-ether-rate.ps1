<#
.SYNOPSIS
	Checks the Ether rate
.DESCRIPTION
	This PowerShell script queries the current Ethereum exchange rates and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-ether-rate
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Rates = (Invoke-WebRequest -uri "https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD,EUR" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$USD = [math]::round($Rates.USD)
	$EUR = [math]::round($Rates.EUR)
	$reply = "Ethereum is now at $USD US$ or $EUR Euro."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
