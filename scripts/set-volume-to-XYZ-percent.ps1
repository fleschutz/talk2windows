<#
.SYNOPSIS
	Sets the audio volume
.DESCRIPTION
	This PowerShell script sets the audio volume to the given value in percent.
#>

param([int]$percent = 0)

try {
	if ($percent -lt 0) { $percent = 0 }
	if ($percent -gt 100) { $percent = 100 }

	# First, set volume down to 0%
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt 100; $i += 2) {
		$obj.SendKeys([char]174) # each tick is -2%
	}

	# Second, turn volume up to the given value
	for ([int]$i = 0; $i -lt $percent; $i += 2) {
		$obj.SendKeys([char]175) # each tick is +2%
	}

	$Reply = "At $percent percent now.", "Okay $percent percent." | Get-Random
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
