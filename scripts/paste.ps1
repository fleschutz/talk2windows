<#
.SYNOPSIS
	Pastes the Selection
.DESCRIPTION
	This PowerShell script paste the selection.
.EXAMPLE
	PS> ./paste
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$obj = New-Object -com wscript.shell
$obj.SendKeys("^V")
& "$PSScriptRoot/_reply.ps1" "Pasted."
exit 0 # success