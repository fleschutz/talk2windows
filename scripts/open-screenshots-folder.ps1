<#
.SYNOPSIS
	Opens the user's screenshots folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's screenshots folder.
.EXAMPLE
	PS> ./open-screenshots-folder
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

function GetScreenshotsFolder {
        if ($IsLinux) {
                $Path = "$HOME/Pictures"
		if (-not(Test-Path "$Path" -pathType container)) { throw "Pictures folder at $Path doesn't exist (yet)"	}
		if (Test-Path "$Path/Screenshots" -pathType container) { $Path = "$Path/Screenshots" }
        } else {
                $Path = [Environment]::GetFolderPath('MyPictures')
		if (-not(Test-Path "$Path" -pathType container)) { throw "Pictures folder at $Path doesn't exist (yet)" }
		if (Test-Path "$Path\Screenshots" -pathType container) { $Path = "$Path\Screenshots" }
        }
	return $Path
}

try {
	$Path = GetScreenshotsFolder
	& "$PSScriptRoot/open-file-explorer.ps1" "$Path"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}