<#
.SYNOPSIS
	Remember number <N>
.DESCRIPTION
	This PowerShell script remembers the given number for later use.
#>

param([int]$number)

function GetTempDir {
        if ("$env:TEMP" -ne "") { return "$env:TEMP" }
        if ("$env:TMP" -ne "")  { return "$env:TMP" }
        return "C:\Temp"
}

try {
	$path = GetTempDir
	if (-not(Test-Path "$path" -pathType container)) { throw "The temporary folder at $path doesn't exist yet." }
	"$number" > "$path\talk2windows_number.txt"
	$reply = "OK, $number remembered."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
