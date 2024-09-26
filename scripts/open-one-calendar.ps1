<#
.SYNOPSIS
	Opens OneCalendar
.DESCRIPTION
	This PowerShell script launches the OneCalendar application.
#>

try {
	$app = Get-AppxPackage -Name "*OneCalendar*"
	if ($app.Status -ne "Ok") { throw "OneCalendar isn't installed yet." }
	Start-Process shell:appsFolder\$($app.PackageFamilyName)!App
	$reply = "Your calendar."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
