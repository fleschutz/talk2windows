<#
.SYNOPSIS
	Closes SimControl
.DESCRIPTION
	This PowerShell script closes the SimControl application gracefully.
.EXAMPLE
	PS> ./close-sim-control
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
tskill SimControl
exit 0 # success
