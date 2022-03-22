<#
.SYNOPSIS
	Backup M: drive to D: 
.DESCRIPTION
	This PowerShell script mirros any data from the M: drive to the D: drive.
.EXAMPLE
	PS> ./backup-m-drive-to-d-drive.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& robocopy M: D: /MIR /J /FFT /MT:8
& "$PSScriptRoot/_reply.ps1" "Backup finished."
exit 0 # success
