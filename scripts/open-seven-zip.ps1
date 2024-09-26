<#
.SYNOPSIS
	Opens 7-Zip
.DESCRIPTION
	This PowerShell script launches the 7-Zip application.
#>

try {
	Start-Process "C:\Program Files\7-Zip\7zFM.exe"
	$reply = "Here's seven zip."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
