<#
.SYNOPSIS
	Closes the Sticky Notes
.DESCRIPTION
	This PowerShell script closes the Microsoft Sticky Notes application gracefully.
#>

try {
	TaskKill /FI "WINDOWTITLE eq Sticky Notes"
	if ($lastExitCode -ne "0") { throw "Sticky Notes isn't running." }
	$reply = "Closed now."
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
