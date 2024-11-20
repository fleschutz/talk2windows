<#
.SYNOPSIS
	Opens Sticky Notes
.DESCRIPTION
	This PowerShell script launches the Microsoft Sticky Notes application.
#>

try {
	$app = Get-AppxPackage -Name "*MicrosoftStickyNotes*"
	if ($app.Status -ne "Ok") { throw "Sticky Notes isn't installed yet." }
	Start-Process shell:appsFolder\$($app.PackageFamilyName)!App
	$reply = "Your notes."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
