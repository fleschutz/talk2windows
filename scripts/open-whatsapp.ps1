<#
.SYNOPSIS
	Launches WhatsApp
.DESCRIPTION
	This PowerShell script launches the WhatsApp application.
#>

try {
        $app = Get-AppxPackage -Name 5319275A.WhatsAppDesktop
        if ($app.Status -ne "Ok") { throw "WhatsApp isn't installed yet" }

        explorer.exe shell:appsFolder\$($app.PackageFamilyName)!App
        & "$PSScriptRoot/say.ps1" "Your WhatsApp."
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])."
        exit 1
}
