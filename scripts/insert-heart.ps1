<#
.SYNOPSIS
	Inserts a Heart
.DESCRIPTION
	This PowerShell script inserts a heart Unicode character.
.EXAMPLE
	PS> ./insert-heart
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	Set-Clipboard -value "$([char]0x2665)"

    $obj = New-Object -com wscript.shell
    $obj.SendKeys("^V")
    & "$PSScriptRoot/_reply.ps1" "Okay."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
