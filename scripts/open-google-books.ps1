<#
.SYNOPSIS
	Opens Google Books
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Books.
.EXAMPLE
	PS> ./open-google-books
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Books..."
& "$PSScriptRoot/open-browser.ps1" "https://books.google.com"
exit 0 # success
