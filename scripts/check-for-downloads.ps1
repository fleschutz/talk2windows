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

function CountDownloadsInProgress {
	[string]$path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
         $files = (Get-ChildItem -path "$path\*.crdownloads" -attributes !Directory)
        return $files.Count
}

try {
	[int]$total = CountDownloads
	[int]$inProgress = CountDownloadsInProgress
	if ($total -eq 0) {
		$reply = "No downloads yet."	
	} elseif ($inProgress -eq 1) {	
		$reply = "One download in progress..."
	} elseif ($inProgress -gt 1) {	
		$reply = "$inProgress downloads in progress..."
	} elseif ($total -eq 1) {
		$reply = "One file downloaded."
	} else {
		$reply = "$total files downloaded."
	}
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/_reply.ps1" $reply
