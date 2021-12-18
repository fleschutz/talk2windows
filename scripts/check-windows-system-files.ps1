<#
.SYNOPSIS
	Checks the validity of the Windows system files (requires admin rights)
.DESCRIPTION
	This PowerShell script checks the validity of the Windows system files. It requires admin rights.
.EXAMPLE
	PS> ./check-windows-system-files
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#Requires -RunAsAdministrator

try {
	sfc /verifyOnly
	if ($lastExitCode -ne "0") { throw "'sfc /verifyOnly' failed" }

	"✔️ checked Windows system files"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
