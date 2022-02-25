<#
.SYNOPSIS
	Opens the documents folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the documents folder.
.EXAMPLE
	PS> ./open-documents-folder
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
        if ($IsLinux) {
                $DocsFolder = Resolve-Path "$HOME/Documents"
        } else {
                $DocsFolder = [Environment]::GetFolderPath('MyDocuments')
        }
	if (-not(Test-Path "$DocsFolder" -pathType container)) {
		throw "Documents folder at $DocsFolder doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$DocsFolder"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
