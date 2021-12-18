<#
.SYNOPSIS
	Starts the Microsoft Store app
.DESCRIPTION
	This PowerShell script launches the Microsoft Store application.
.EXAMPLE
	PS> ./open-microsoft-store
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-windows-store:
exit 0 # success
