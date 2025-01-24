<#
.SYNOPSIS
	Plays rock music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays rock music.
#>

& "$PSScriptRoot/say.ps1" "Oh yeah!"
& "$PSScriptRoot/open-browser.ps1" "https://tunein.com/radio/RADIO-BOB-Livestream-994-s96189/?lang=en"
exit 0 # success
