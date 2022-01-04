<#
.SYNOPSIS
	Checks a drive for free space left (20 GB by default)
.DESCRIPTION
	This PowerShell script checks a drive for free space left (20 GB by default).
.PARAMETER Drive
	Specifies the drive to check
.PARAMETER MinLevel
	Specifies the minimum level in Gigabyte
.EXAMPLE
	PS> ./check-drive-space C
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Drive = "", [int]$MinLevel = 20) # minimum level in GB

try {
	if ($Drive -eq "" ) { $Drive = read-host "Enter drive to check" }

	$DriveDetails = (get-psdrive $Drive)
	[int]$Free = (($DriveDetails.Free / 1024) / 1024) / 1024
	[int]$Used = (($DriveDetails.Used / 1024) / 1024) / 1024
	[int]$Total = ($Used + $Free)

	if ($Free -lt $MinLevel) {
        	write-warning "Drive $Drive has only $Free GB left to use! ($Used of $Total GB used, minimum is $MinLevel GB)"
		exit 1
	}

	& "$PSScriptRoot/_reply.ps1" "Drive $Drive has $Free GB left ($Total GB total)"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
