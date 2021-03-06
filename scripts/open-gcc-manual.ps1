<#
.SYNOPSIS
	Shows the GCC manual
.DESCRIPTION
	This PowerShell script launches the Web browser with the GCC manual.
.EXAMPLE
	PS> ./show-gcc-manual
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://gcc.gnu.org/onlinedocs/"
exit 0 # success
