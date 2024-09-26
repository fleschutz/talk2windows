<#
.SYNOPSIS
	Update the Git repository
.DESCRIPTION
	This PowerShell script pulls updates for the Talk2Windows Git repository.
#>

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	$Reply = (git -C "$PSScriptRoot" pull)
	& "$PSScriptRoot/say.ps1" "$Reply"
	exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
