<#
.SYNOPSIS
	Launches Disney+
.DESCRIPTION
	This PowerShell script launches the Disney+ application.
#>

try {
        $App = Get-AppxPackage -Name Disney.37853FC22B2CE
        if ($App.Status -ne "Ok") { throw "Can't open Disney Plus, is it installed?" }

        explorer.exe shell:appsFolder\$($App.PackageFamilyName)!App
        exit 0 # success
} catch {
        & "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
        exit 1
}
