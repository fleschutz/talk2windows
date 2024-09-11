<#
.SYNOPSIS
	Turns the volume off
.DESCRIPTION
	This PowerShell script mutes the audio device immediately.
#>

(New-Object -com wscript.shell).SendKeys([char]173)
