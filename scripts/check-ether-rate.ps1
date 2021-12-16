<#
.SYNOPSIS
	Checks the Ether rate
.DESCRIPTION
	This script queries the current Ethereum exchange rates and answers by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-ether-rate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Rates = (Invoke-WebRequest -uri "https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD,EUR" -userAgent "curl" -useBasicParsing).Content | ConvertFrom-Json
	$USD = [math]::round($Rates.USD)
	$EUR = [math]::round($Rates.EUR)
	& "$PSScriptRoot/give-reply.ps1" "Ethereum is now at $USD US$ or $EUR Euro."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
