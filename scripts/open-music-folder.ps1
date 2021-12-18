<#
.SYNOPSIS
	Opens the music folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's music folder.
.EXAMPLE
	PS> ./open-music-folder
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDir = resolve-path "$HOME/Music"
	if (-not(test-path "$TargetDir" -pathType container)) {
		throw "Music folder at 📂$TargetDir doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
