<#
.SYNOPSIS
	Check for crash dumps
.DESCRIPTION
	This PowerShell script checks if there are crash dump files.
#>

function CountCrashDumps {
        [string]$path = Resolve-Path -Path "~\AppData\Local\CrashDumps"
        $files = (Get-ChildItem -path "$path\*.dmp" -attributes !Directory)
        return $files.Count
}

try {
	[int]$count = CountCrashDumps
	if ($count -eq 0) {
		$reply = "No crash dump found."		
	} elseif ($count -eq 1) {
		$reply = "There's one crash dump."
	} else {
		$reply = "Oh, there are $count crash dumps."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
