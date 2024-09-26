<#
.SYNOPSIS
	Opens a repository
.DESCRIPTION
	This PowerShell script launches the File Explorer with the given repository.
.PARAMETER FolderName
	Specifies the repository's folder name
#>

param([string]$FolderName)

try {
        if (Test-Path "$HOME\Repos" -pathType Container) {              # try short name
		 $Path = "$HOME\Repos"
	} elseif (Test-Path "$HOME\Repositories" -pathType Container) { # try long name
                $Path = "$HOME\Repositories"
	} elseif (Test-Path "$HOME\source\repos" -pathType Container) { # try Visual Studio default
                $Path = "$HOME\source\repos"
        } else {
                throw "The folder for Git repositories in your home directory doesn't exist (yet)."
        }
	if (-not(Test-Path "$Path\$FolderName" -pathType Container)) { throw "There's no repository called '$FolderName'" }
	& "$PSScriptRoot/open-file-explorer.ps1" "$Path\$FolderName"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
