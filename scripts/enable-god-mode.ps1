<#
.SYNOPSIS
	Enables the god mode
.DESCRIPTION
	This PowerShell script enables the god mode. It adds a new icon to the desktop.
#>

try {
	$GodModeSplat = @{
		Path = "$HOME\Desktop"
		Name = "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"
		ItemType = 'Directory'
	}
	$null = New-Item @GodModeSplat
	$reply = "God mode enabled - just double-click the new desktop icon."
} catch { $reply = "Sorry: $($Error[0])" }

& "$PSScriptRoot/say.ps1" $reply
