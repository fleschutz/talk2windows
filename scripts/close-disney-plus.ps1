<#
.SYNOPSIS
	Closes Disney+
.DESCRIPTION
	This PowerShell script closes the Disney+ application gracefully.
#>

TaskKill /im msedge.exe /f /t
if ($lastExitCode -ne "0") {
        & "$PSScriptRoot/say.ps1" "Sorry, Disney Plus isn't running."
        exit 1
}
exit 0 # success
