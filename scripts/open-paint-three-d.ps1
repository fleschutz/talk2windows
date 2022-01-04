<#
.SYNOPSIS
	Launches the Paint 3D app
.DESCRIPTION
	This PowerShell script launches the Paint 3D application.
.EXAMPLE
	PS> ./open-paint-3d
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process ms-paint:
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
