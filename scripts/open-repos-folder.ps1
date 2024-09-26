<#
.SYNOPSIS
	Opens the repos folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's Git repositories folder.
#>

try {
        if (Test-Path "$HOME\Repos" -pathType container) {              # try short name
		 $path = "$HOME\Repos"
	} elseif (Test-Path "$HOME\Repositories" -pathType container) { # try long name
                $path = "$HOME\Repositories"
	} elseif (Test-Path "$HOME\source\repos" -pathType container) { # try Visual Studio default
                $path = "$HOME\source\repos"
        } else {
                throw "Your Git repositories folder in your home directory doesn't exist yet."
        }
	& "$PSScriptRoot/open-file-explorer.ps1" "$path"
	& "$PSScriptRoot/say.ps1" "Your Git repos".
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
