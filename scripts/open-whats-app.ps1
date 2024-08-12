<#
.SYNOPSIS
	Launches WhatsApp
.DESCRIPTION
	This PowerShell script launches the WhatsApp application.
#>

try {
        $App = Get-AppxPackage -Name 5319275A.WhatsAppDesktop
        if ($App.Status -ne "Ok") { throw "Can't open WhatsApp, is it installed?" }

        explorer.exe shell:appsFolder\$($App.PackageFamilyName)!App
        exit 0 # success
} catch {
        & "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
        exit 1
}
