<#
.SYNOPSIS
	Opens the backup settings of Windows
.DESCRIPTION
	This PowerShell script launches the backup settings of Windows.
.EXAMPLE
	PS> ./open-backup-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:backup
exit 0 # success
