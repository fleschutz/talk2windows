<#
.SYNOPSIS
	Update the Git repository
.DESCRIPTION
	This PowerShell script pulls updates for the Talk2Windows Git repository.
.EXAMPLE
	PS> ./update-repository
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Hold on."
	$Reply = (git pull)
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
        & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
        exit 1
}
