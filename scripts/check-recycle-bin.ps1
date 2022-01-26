<#
.SYNOPSIS
	Checks the Recycle Bin
.DESCRIPTION
	This PowerShell script checks the user's recycle bin folder.
.EXAMPLE
	PS> ./check-recycle-bin
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz / License: CC0
#>

function Get-CurrentUserSID { [CmdletBinding()] param()
	Add-Type -AssemblyName System.DirectoryServices.AccountManagement
	return ([System.DirectoryServices.AccountManagement.UserPrincipal]::Current).SID.Value
}

try {
	$TargetDir = 'C:\$Recycle.Bin\' + "$(Get-CurrentUserSID)"
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Recycle bin folder at $TargetDir doesn't exist."
	}

	[int]$NumFiles = 0	
	$Files = (Get-ChildItem "$TargetDir/*")
	foreach($File in $Files) {
		$NumFiles++
	}
	if ($NumFiles -eq 0) {
		$Reply = "Recycle bin is empty."
	} else {
		$Reply = "$NumFiles files in recycle bin."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
