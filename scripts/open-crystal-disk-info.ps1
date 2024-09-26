<#
.SYNOPSIS
	Launches CrystalDiskInfo
.DESCRIPTION
	This PowerShell script launches the CrystalDiskInfo application.
#>

function TryToExec { param($Folder, $Binary)
        if (test-path "$Folder/$Binary" -pathType leaf) {
                start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
                exit 0 # success
        }
}

try {
	TryToExec "C:\Program Files\CrystalDiskInfo" "DiskInfo64.exe"

	& "$PSScriptRoot/say.ps1" "Sorry, CrystalDiskInfo isn't installed yet."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
