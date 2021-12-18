<#
.SYNOPSIS
	Opens the recycle bin folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's recycle bin folder.
.EXAMPLE
	PS> ./open-recycle-bin-folder
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

start shell:recyclebinfolder
exit 0 # success