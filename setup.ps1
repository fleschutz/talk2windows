<#
.SYNOPSIS
	Configures Talk2Windows
.DESCRIPTION
	This script exports all PowerShell scripts from subfolder 'scripts' as Serenade voice phrases.
.EXAMPLE
	PS> ./setup.ps1 
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#requires -version 2

param([string]$filePattern = "$PSScriptRoot\scripts\*.ps1", [string]$app = "terminal", [string]$targetFile = "$HOME\.serenade\scripts\Talk2Windows.js")

function AddVoiceCmd { param([string]$phrase, [string]$scriptName)
	$phrase = $phrase -replace "-"," "
	"serenade.global().command(W+`"$phrase`",async(api)=>{await api.runShell(A,[N,B+`"$scriptName`"]);});" | Add-Content "$targetFile"
}

function AddMatchingVoiceCmd { param([string]$phrase, [string]$scriptName)
	$phrase = $phrase -replace "-"," "
	"serenade.global().command(W+`"$phrase`",async(api,matches)=>{await api.runShell(A,[N,B+`"$scriptName`",matches.text]);});" | Add-Content "$targetFile"
}

try {
	Clear
	""
	"⚙️ Setup"
	"________"
	""
	Write-Host " 1. Searching for Serenade application... " -noNewline
	if (!(Test-Path "~\.serenade" -pathType container)) { throw "Serenade app isn't installed yet - please download and install it from https://serenade.ai" }
	Write-Host "OK"

	$wakeWord = Read-Host " 2. Enter your personal wake word (e.g. Alexa, Computer, Jarvis, Siri, Windows)"

	$scripts = Get-ChildItem "$filePattern"
	" 3. Found $($scripts.Count) scripts at: $filePattern... OK"

	Write-Host " 4. Writing voice commands to: $targetFile..." -noNewline
	"/* DO NOT EDIT! This file has been generated automatically by Talk2Windows */" | Set-Content "$targetFile"
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
	Write-Host " OK"
	""
	""
	""
	""
	""
	"🎧 Usage"
	"________"
	""
	" 1. Put your headset on and check audio and microphone."
	""
	" 2. Launch Serenade and click the slider to switch from Paused to Listening mode."
	"    (in case a 'low voice' is shown: raise the mic audio level)"
	""
	" 3. Say `"$wakeWord, hi`" with a calm voice into the mic."
	""
	""
	""
	""
	"HINT: Say `"$wakeWord, I need help`" or visit: https://github.com/fleschutz/talk2windows to see all voice commands."
	""
	Start-Sleep -seconds 90
	exit 0 # success
} catch {
	Write-Error "ERROR: $($Error[0])"
	exit 1
}
