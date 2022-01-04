<#
.SYNOPSIS
	Opens Windows recovery settings 
.DESCRIPTION
	This PowerShell script launches the Windows recovery settings.
.EXAMPLE
	PS> ./open-recovery-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:recovery
exit 0 # success
