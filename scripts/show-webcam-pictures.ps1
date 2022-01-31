<#
.SYNOPSIS
	Shows the best Webcam Pictures
.DESCRIPTION
	This PowerShell script launches the Web browser and shows the best webcam pictures.
.EXAMPLE
	PS> ./show-webcam-pictures
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.foto-webcam.eu/webcam/bestof/"
exit 0 # success
