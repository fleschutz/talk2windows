<#
.SYNOPSIS
	Opens the DeepL Translator website 
.DESCRIPTION
	This PowerShell script launches the Web browser with the DeepL Translator website.
.EXAMPLE
	PS> ./open-deep-l-translator
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.deepl.com/translator"
exit 0 # success
