<#
.SYNOPSIS
	Uninstalls TikTok
.DESCRIPTION
	This PowerShell script uninstalls TikTok from the local computer.
#>

try {
	& "$PSScriptRoot/say.ps1" "Uninstalling TikTok, please wait..."

	& winget uninstall "TikTok"
	if ($lastExitCode -ne "0") { throw "Can't uninstall TikTok, is it installed?" }

	& "$PSScriptRoot/say.ps1" "TikTok is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
