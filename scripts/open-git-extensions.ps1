<#
.SYNOPSIS
	Opens Git Extensions 
.DESCRIPTION
	This PowerShell script launches the Git Extensions application.
#>

function TryToExec { param($folder, $binary)
	if (Test-Path "$folder/$binary" -pathType leaf) {
		Start-Process "$folder/$binary" -workingDirectory "$folder"
		exit 0 # success
	}
}

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	TryToExec "C:\Program Files (x86)\GitExtensions" "GitExtensions.exe"
	TryToExec "C:\Program Files\GitExtensions" "GitExtensions.exe"
	throw "Can't find Git Extensions."
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
