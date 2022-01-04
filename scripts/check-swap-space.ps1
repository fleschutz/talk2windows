<#
.SYNOPSIS
	Checks the swap space
.DESCRIPTION
	This PowerShell script determines the swap space details and replies by text-to-speech (TTS).
.PARAMETER MinLevel
	Specifies the minimum level (50 GB by default)
.EXAMPLE
	PS> ./check-swap-space
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([int]$MinLevel = 50) # minimum level in GB

try {
	if ($IsLinux) {
		$Result = $(free --mega | grep Swap:)
		[int]$Total = $Result.subString(5,14)
		[int]$Used = $Result.substring(20,13)
		[int]$Free = $Result.substring(31,12)
	} else {
		$Items = get-wmiobject -class "Win32_PageFileUsage" -namespace "root\CIMV2" -computername localhost 
		foreach ($Item in $Items) { 
			[int]$Total = $Item.AllocatedBaseSize
			[int]$Used = $Item.CurrentUsage
			[int]$Free = ($Total - $Used)
		} 
	}

	if ($Total -eq "0") {
        	$Reply = "No swap space configured!"
	} elseif ($Used -eq 0) {
		$Reply = "No swap space in use, $Free GB are available."
	} elseif ($Free -lt $MinLevel) {
        	$Reply = "Swap space has only $Free GB left to use! ($Used of $Total GB used, minimum is $MinLevel GB)"
	} else {
		$Reply = "Swap space uses $Used GB, $Free GB are available."
	}
	& "$PSScriptRoot/_reply.ps1" "$Reply"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
