<#
.SYNOPSIS
	Launch the Magnifier
.DESCRIPTION
	This PowerShell script launches the Windows Screen Magnifier application.
.EXAMPLE
	PS> ./open-magnifier
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process magnify.exe
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
