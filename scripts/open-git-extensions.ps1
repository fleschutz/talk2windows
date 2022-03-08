<#
.SYNOPSIS
	Launches Git Extensions 
.DESCRIPTION
	This PowerShell script launches the Git Extensions application.
.EXAMPLE
	PS> ./open-git-extensions
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
	& "$PSScriptRoot/_reply.ps1" "Okay"
	TryToExec "C:\Program Files (x86)\GitExtensions" "GitExtensions.exe"
	TryToExec "C:\Program Files\GitExtensions" "GitExtensions.exe"
	throw "Can't find Git Extensions."
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
