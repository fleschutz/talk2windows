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
	$reply = "Bitcoin is at $USD US Dollar or at $EUR Euro."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
