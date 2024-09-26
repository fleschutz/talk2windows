<#
.SYNOPSIS
	Empty the recycle bin
.DESCRIPTION
	This PowerShell script removes the content of all the local computer's recycle bins permanently. NOTE: this cannot be undo!
#>

try {
	& "$PSScriptRoot/say.ps1" "Okay."
        $recycleBin = (New-Object -com shell.application).Namespace(10)
	$reply = "It's already empty."
        foreach($item in $recycleBin.items()) {
           	Clear-RecycleBin -force -confirm:$false
		$reply = "Empty now."
        }
} catch { $reply = "Sorry: $($Error[0])." }
& "$PSScriptRoot/say.ps1" $reply
