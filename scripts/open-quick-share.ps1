<#
.SYNOPSIS
	Opens Quick Share
.DESCRIPTION
	This PowerShell script launches the Quick Share application.
#>

try {
	& "$PSScriptRoot/say.ps1" "Hold on."
	Start-Process "C:\Program Files\Google\NearbyShare\nearby_share.exe"
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
