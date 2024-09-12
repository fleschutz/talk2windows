<#
.SYNOPSIS
	Check for downloads
.DESCRIPTION
	This PowerShell script checks if there are downloads available.
#>

function CountDownloads {
	[string]$path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
         $files = (Get-ChildItem -path "$path\*.*" -attributes !Directory)
        return $files.Count
}

try {
	[int]$count = CountDownloads
	if ($count -eq 0) {
		$reply = "No downloads found."		
	} elseif ($count -eq 1) {
		$reply = "One file in downloads folder."
	} else {
		$reply = "$count files in downloads folder."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/_reply.ps1" $reply
