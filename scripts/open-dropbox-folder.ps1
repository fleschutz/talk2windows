<#
.SYNOPSIS
	Opens the Dropbox folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's Dropbox folder.
.EXAMPLE
	PS> ./open-dropbox-folder
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$TargetDirs = resolve-path "$HOME/Dropbox*"
	foreach($TargetDir in $TargetDirs) {
		& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
		exit 0 # success
	}
	throw "No Dropbox folder at 📂$HOME/Dropbox"
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
