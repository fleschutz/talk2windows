<#
.SYNOPSIS
	Empty Recycle Bin
.DESCRIPTION
	This PowerShell script removes the content of all the local computer's recycle bins permanently. NOTE: this cannot be undo!
.EXAMPLE
	PS> ./empty-recycle-bin
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Okay."
	Clear-RecycleBin -Force -Confirm:$false
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
