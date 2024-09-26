<#
.SYNOPSIS
	Checks the Git version
.DESCRIPTION
	This PowerShell script checks the Git version and answers it by text-to-speech (TTS).
#>

try {
	$version = (git --version)
	$reply = "Installed is $Version."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
