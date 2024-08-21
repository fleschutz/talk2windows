<#
.SYNOPSIS
        Launches the Voice Recorder app
.DESCRIPTION
        This PowerShell script launches the Windows Voice Recorder application.
#>

try {
	Start-Process explorer.exe shell:appsFolder\Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe!App
        $reply = "Okay."
} catch { $reply = "Sorry, $($Error[0])" }

& "$PSScriptRoot/_reply.ps1" $reply