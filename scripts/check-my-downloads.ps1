<#
.SYNOPSIS
	Check my downloads
.DESCRIPTION
	This PowerShell script checks if there are downloads available.
#>

try {
	[string]$path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path

	[int]$total = (Get-ChildItem -path "$path\*" -attributes !Directory).Count

	if ($total -eq 0) {
		$reply = "No downloads yet."
	} else {
		[int]$inProgress = (Get-ChildItem -path "$path\*.crdownload" -attributes !Directory).Count
		$total -= $inProgress
		if ($total -eq 1) {
			$reply = "One file downloaded."
		} else {
			$reply = "$total files downloaded."
		}
		if ($inProgress -eq 1) {	
			$reply += " One in progress."
		} elseif ($inProgress -gt 1) {	
			$reply += "$inProgress in progress."
		}
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
