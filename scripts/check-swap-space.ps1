<#
.SYNOPSIS
	Checks the swap space
.DESCRIPTION
	This PowerShell script checks the free swap space.
.EXAMPLE
	PS> ./check-swap-space
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([int]$MinLevel = 10) # minimum level in GB

function MB2String { param([int64]$Bytes)
        if ($Bytes -lt 1000) { return "$($Bytes)MB" }
        $Bytes /= 1000
        if ($Bytes -lt 1000) { return "$($Bytes)GB" }
        $Bytes /= 1000
        if ($Bytes -lt 1000) { return "$($Bytes)TB" }
        $Bytes /= 1000
        if ($Bytes -lt 1000) { return "$($Bytes)PB" }
        $Bytes /= 1000
        if ($Bytes -lt 1000) { return "$($Bytes)EB" }
}

try {
	[int]$Total = [int]$Used = [int]$Free = 0
	$Items = Get-WmiObject -class "Win32_PageFileUsage" -namespace "root\CIMV2" -computername localhost 
	foreach ($Item in $Items) { 
		$Total = $Item.AllocatedBaseSize
		$Used = $Item.CurrentUsage
		$Free = ($Total - $Used)
	} 
	if ($Total -eq 0) {
        	$Reply = "No swap space configured!"
	} elseif ($Free -eq 0) {
		$Reply = "Swap space of $(MB2String $Total) is full!"
	} elseif ($Free -lt $MinLevel) {
		$Reply = "Swap space of $(MB2String $Total) is nearly full ($(MB2String $Free) free)!"
	} elseif ($Used -eq 0) {
		$Reply = "Swap space with $(MB2String $Total) reserved"
	} elseif ($Used -lt $Free) {
		$Reply = "Swap space uses $(MB2String $Used) of $(MB2String $Total)"
	} else {
		$Reply = "Swap space has $(MB2String $Free) of $(MB2String $Total) free"
	}
	& "$PSScriptRoot/say.ps1" $Reply
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
