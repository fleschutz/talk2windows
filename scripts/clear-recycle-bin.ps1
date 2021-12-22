<#
.SYNOPSIS
	Clears the recycle bin
.DESCRIPTION
	This PowerShell script removes the content of the recycle bin folder permanently. NOTE: this cannot be undo!
.EXAMPLE
	PS> ./clear-recycle-bin
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	Clear-RecycleBin -Confirm:$false
	if ($lastExitCode -ne "0") { throw "'Clear-RecycleBin' failed" }

	& "$PSScriptRoot/_reply.ps1" "Clean now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
