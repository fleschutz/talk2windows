<#
.SYNOPSIS
	Opens Google Books
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Books.
#>

& "$PSScriptRoot/say.ps1" "Hold on..."
& "$PSScriptRoot/open-browser.ps1" "https://books.google.com"
