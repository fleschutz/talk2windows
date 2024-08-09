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

function AddVoiceCmd { param([string]$wakeWord, [string]$baseName, [string]$scriptPath)
	$baseName = $baseName -replace "-"," "
	$scriptPath = $scriptPath -replace "\\","\\"
	"serenade.global().command(`"$wakeWord $baseName`",async(api)=>{await api.runShell(`"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`",[`"-NoProfile`",`"$scriptPath`"]);});" | Add-Content "$targetFile"
}

function AddVoiceCmdWithArgument { param([string]$wakeWord, [string]$baseName, [string]$scriptPath)
	$baseName = $baseName -replace "-XYZ","-<%text%>"
	$baseName = $baseName -replace "-"," "
	$scriptPath = $scriptPath -replace "\\","\\"
	"serenade.global().command(`"$wakeWord $baseName`",async(api,matches)=>{await api.runShell(`"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`", [`"-NoProfile`",`"$scriptPath`",matches.text]);});" | Add-Content "$targetFile"
}

try {
	"`n(1/4) Checking requirements for Talk2Windows..."
	if (!(Test-Path "$HOME\.serenade" -pathType container)) { throw "The Serenade app is missing - please download and install it from serenade.ai" }

	$wakeWord = Read-Host "(2/4) Enter your personal wake word, e.g. 'Alexa', 'Jarvis', 'Siri', 'Windows'"
	$wakeWord = $wakeWord.toLower()

	$scripts = Get-ChildItem "$filePattern"
	"(3/4) Importing $($scripts.Count) PowerShell scripts from:    $filePattern..."

	"(4/4) Exporting as Serenade's voice phrases to: $targetFile..."
	"/* DO NOT EDIT! This file has been generated automatically by talk2windows */" | Set-Content "$targetFile"
	foreach($script in $scripts) {
		$baseName = $script.basename
		if ($baseName[0] -eq "_") { continue } # internal script, don't export it
		if ($baseName -like "*-XYZ*") {
			AddVoiceCmdWithArgument $wakeWord $baseName $script
		} elseif ($baseName -like "*-is-*") {
			AddVoiceCmd $wakeWord $baseName $script
			$baseName = $baseName -replace "-is-","'s-"
			AddVoiceCmd $wakeWord $baseName $script
		} elseif ($baseName -like "i-am-*") {
			$baseName = $baseName -replace "-am-","'m-"
			AddVoiceCmd $wakeWord $baseName $script

		} elseif ($baseName -like "i-will-*") {
			$baseName = $baseName -replace "-will-","'ll-"
			AddVoiceCmd $wakeWord $baseName $script
		} else {
			AddVoiceCmd $wakeWord $baseName $script 
		}
	}
	"`nSUCCESS - now launch Serenade and unpause it, then speak into the mic: `'$wakeWord, hi`'."
	exit 0 # success
} catch {
	Write-Error "ERROR: $($Error[0])"
	exit 1
}