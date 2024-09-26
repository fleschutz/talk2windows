<#
.SYNOPSIS
	Insert pipe sign
.DESCRIPTION
	This PowerShell script inserts the pipe sign ('|').
#>

(New-Object -com wscript.shell).SendKeys("|")
& "$PSScriptRoot/say.ps1" "Pipe inserted."
