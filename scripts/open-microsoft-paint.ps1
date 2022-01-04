<#
.SYNOPSIS
	Launches the Microsoft Paint app
.DESCRIPTION
	This PowerShell script launches the Microsoft Paint application.
.EXAMPLE
	PS> ./open-microsoft-paint
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process mspaint.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
