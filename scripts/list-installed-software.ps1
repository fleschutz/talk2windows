<#
.SYNOPSIS
	Lists the installed software
.DESCRIPTION
	This PowerShell script lists the installed software in a table.
.EXAMPLE
	PS> ./list-installed-software
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "OK."
Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*, HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | select-object DisplayName,DisplayVersion,InstallDate | Out-GridView
sleep 600
exit 0 # success
