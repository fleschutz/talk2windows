<#
.SYNOPSIS
	Installs Talk2Windows
.DESCRIPTION
	This script exports all PowerShell scripts from subfolder 'scripts' as Serenade voice phrases.
.EXAMPLE
	PS> ./install.ps1 
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#requires -version 2

param([string]$filePattern = "$PSScriptRoot\scripts\*.ps1", [string]$app = "terminal", [string]$targetFile = "$HOME\.serenade\scripts\talk2windows.js")

function AddVoiceCmd { param([string]$phrase, [string]$scriptName)
	$phrase = $phrase -replace "-"," "
	"serenade.global().command(W+`"$phrase`",async(api)=>{await api.runShell(A,[N,B+`"$scriptName`"]);});" | Add-Content "$targetFile"
}

function AddMatchingVoiceCmd { param([string]$phrase, [string]$scriptName)
	$phrase = $phrase -replace "-"," "
	"serenade.global().command(W+`"$phrase`",async(api,matches)=>{await api.runShell(A,[N,B+`"$scriptName`",matches.text]);});" | Add-Content "$targetFile"
}

try {
	Write-Host "`n(1/4) Searching for Serenade app...  " -noNewline
	if (!(Test-Path "~\.serenade" -pathType container)) { throw "Serenade app isn't installed yet - please download and install it from https://serenade.ai" }
	Write-Host "Serenade is installed."

	$wakeWord = Read-Host "(2/4) Enter your personal wake word, e.g. 'Alexa', 'Jarvis', 'Siri', 'Windows'"

	$scripts = Get-ChildItem "$filePattern"
	"(3/4) Importing $($scripts.Count) PowerShell scripts from:    $filePattern..."

	"(4/4) Exporting as Serenade's voice phrases to: $targetFile..."
	"/* DO NOT EDIT! This file has been generated automatically by talk2windows */" | Set-Content "$targetFile"
	"var A = `"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`";" | Add-Content "$targetFile"
	$scriptRoot = "$PSScriptRoot"
	$scriptRoot = $scriptRoot -replace "\\","\\"
	"var B = `"$scriptRoot\\scripts\\`";" | Add-Content "$targetFile"
	"var N = `"-NoProfile`";" | Add-Content "$targetFile"
	"var W = `"$($wakeWord.toLower()) `";" | Add-Content "$targetFile"
	foreach($script in $scripts) {
		$baseName = $script.basename
		if ($baseName[0] -eq "_") { continue } # internal script
		if ($baseName -like "*-XYZ*") {
			$phrase = $baseName -replace "-XYZ","-<%text%>"
			AddMatchingVoiceCmd $phrase "$baseName.ps1"
		} elseif ($baseName -like "*-is-*") {
			AddVoiceCmd $baseName "$baseName.ps1"
			$phrase = $baseName -replace "-is-","'s-"
			AddVoiceCmd $phrase "$baseName.ps1"
		} elseif ($baseName -like "i-am-*") {
			AddVoiceCmd $baseName "$baseName.ps1"
			$phrase = $baseName -replace "-am-","'m-"
			AddVoiceCmd $phrase "$baseName.ps1"
		} elseif ($baseName -like "i-will-*") {
			AddVoiceCmd $baseName "$baseName.ps1"
			$phrase = $baseName -replace "-will-","'ll-"
			AddVoiceCmd $phrase "$baseName.ps1"
		} else {
			AddVoiceCmd $baseName "$baseName.ps1"
		}
	}
	"Talk2Windows with wake word '$wakeWord' installed successfully."
	""
	"Use Talk2Windows as follows:"
	""
	"  1. Put your headset on and check that it's working."
	"  2. Launch the Serenade app, wait a bit, and click the slider to switch from Paused to Listening mode."
	"  3. Say a voice command like `"$wakeWord, hi`" with a calm voice into the mic."
	""
	exit 0 # success
} catch {
	Write-Error "ERROR: $($Error[0])"
	exit 1
}