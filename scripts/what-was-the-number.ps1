<#
.SYNOPSIS
	Tells the remembered number.
.DESCRIPTION
	This PowerShell script tells the remembered number.
#>

function GetTempDir {
        if ("$env:TEMP" -ne "") { return "$env:TEMP" }
        if ("$env:TMP" -ne "")  { return "$env:TMP" }
        return "C:\Temp"
}

try {
	$path = GetTempDir
	if (-not(Test-Path "$path" -pathType container)) { throw "The temporary folder at $path doesn't exist yet." }
	$path = "$path\talk2windows_number.txt"
	if (-not(Test-Path "$path" -pathType leaf)) { throw "I forgot." }
	$reply = "The number was " + (Get-Content "$path")
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
