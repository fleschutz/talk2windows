<#
.SYNOPSIS
	Checks the Bitcoin rate
.DESCRIPTION
	This PowerShell script queries the current Bitcoin exchange rates and answers by text-to-speech (TTS).
#>

try {
	$rates = (Invoke-WebRequest -uri "https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD,EUR" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$USD = [math]::round($rates.USD)
	$EUR = [math]::round($rates.EUR)
	& "$PSScriptRoot/_reply.ps1" "Bitcoin is at $USD US Dollar or $EUR Euro."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
