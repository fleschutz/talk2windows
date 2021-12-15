<#
.SYNOPSIS
	Closes the Magnifier
.DESCRIPTION
	This script closes the Windows Screen Magnifier application gracefully.
.EXAMPLE
	PS> ./close-magnifier
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

tskill magnify
exit 0 # success
