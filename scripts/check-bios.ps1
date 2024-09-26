<#
.SYNOPSIS
	Checks BIOS details
.DESCRIPTION
	This PowerShell script queries BIOS details and prints it.
.EXAMPLE
	PS> ./check-bios
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$BIOS = Get-CimInstance -ClassName Win32_BIOS
	$Manufacturer = $BIOS.Manufacturer.Trim()
	$Model = $BIOS.Name.Trim()
	$Serial = $BIOS.SerialNumber.Trim()
	$Version = $BIOS.Version.Trim()
	& "$PSScriptRoot/say.ps1" "It's a $Model BIOS (S/N $Serial, version $Version) by $Manufacturer"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
