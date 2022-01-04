<#
.SYNOPSIS
	Launches Screen Sketch
.DESCRIPTION
	This PowerShell script launches the Screen Sketch application.
.EXAMPLE
	PS> ./open-screen-sketch
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process ms-screensketch:
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
