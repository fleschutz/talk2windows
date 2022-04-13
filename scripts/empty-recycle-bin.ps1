<#
.SYNOPSIS
	Empty Recycle Bin
.DESCRIPTION
	This PowerShell script removes the content of all the local computer's recycle bins permanently. NOTE: this cannot be undo!
.EXAMPLE
	PS> ./empty-recycle-bin
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
        $Shell = New-Object -com shell.application
        $RecycleBin = $Shell.Namespace(10)
        foreach($Item in $RecycleBin.items()) {
		& "$PSScriptRoot/_reply.ps1" "Okay."
           	Clear-RecycleBin -Force -Confirm:$false
		& "$PSScriptRoot/_reply.ps1" "Empty now."
		exit 0 # success
        }
	throw "It's empty"
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])."
	exit 1
}
