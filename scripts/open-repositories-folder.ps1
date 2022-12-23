<#
.SYNOPSIS
	Opens the repositories folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's Git repositories folder.
.EXAMPLE
	PS> ./open-repos-folder
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
        if (Test-Path "$HOME/Repos" -pathType Container) {              # try short name
		 $Path = "$HOME/Repos"
	} elseif (Test-Path "$HOME/Repositories" -pathType Container) { # try long name
                $Path = "$HOME/Repositories"
	} elseif (Test-Path "$HOME/source/repos" -pathType Container) { # try Visual Studio default
                $Path = "$HOME/source/repos"
        } else {
                throw "The folder for Git repositories in your home directory doesn't exist (yet)."
        }
	& "$PSScriptRoot/open-file-explorer.ps1" "$TargetDir"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}