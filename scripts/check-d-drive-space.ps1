<#
.SYNOPSIS
	Checks the D: drive space
.DESCRIPTION
	This PowerShell script checks the D: drive for free space left.
.EXAMPLE
	PS> ./check-d-drive-space
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Drive = "D", [int]$MinLevel = 10) # minimum level in GB

try {
	$DriveDetails = (get-psdrive $Drive)
	[int]$Free = (($DriveDetails.Free / 1024) / 1024) / 1024
	[int]$Used = (($DriveDetails.Used / 1024) / 1024) / 1024
	[int]$Total = ($Used + $Free)

	if ($Free -lt $MinLevel) {
        	$Reply = "Uh oh, $Drive drive has only $Free GB left to use! $Used out of $Total GB are in use!"
	} else {
		$Reply = "$Drive drive has $Free GB left, $Total GB total"
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
