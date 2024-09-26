<#
.SYNOPSIS
	Turn volume fully up
.DESCRIPTION
	This PowerShell script turns the audio volume up to 100%.
#>

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt 100; $i += 2) {
		$obj.SendKeys([char]175) # each tick is +2%
	}
	& "$PSScriptRoot/say.ps1" "Hundred percent now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
