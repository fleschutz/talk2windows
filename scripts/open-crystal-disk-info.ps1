<#
.SYNOPSIS
	Launches CrystalDiskInfo
.DESCRIPTION
	This PowerShell script launches the CrystalDiskInfo application.
.EXAMPLE
	PS> ./open-crystal-disk-info
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function TryToExec { param($Folder, $Binary)
        if (test-path "$Folder/$Binary" -pathType leaf) {
                start-process "$Folder/$Binary" -WorkingDirectory "$Folder"
                exit 0 # success
        }
}

try {
	TryToExec "C:\Program Files\CrystalDiskInfo" "DiskInfo64.exe"

	& "$PSScriptRoot/_reply.ps1" "Sorry, CrystalDiskInfo isn't installed yet."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
