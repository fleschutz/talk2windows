<#
.SYNOPSIS
	Exports to Serenade 
.DESCRIPTION
	This script exports all voice skill scripts in subfolder 'scripts' to Serenade.
.PARAMETER WakeWord
	Specifies the wake word
.PARAMETER FilePattern
	Specifies the file pattern for the scripts
.PARAMETER Application
	Specifies the application to be used
.PARAMETER TargetFile
	Specifies the target file 
.EXAMPLE
	PS> ./export.ps1 
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#requires -version 2

param([string]$WakeWord = "Windows", [string]$FilePattern = "$PSScriptRoot/scripts/*.ps1", [string]$Application = "terminal", [string]$TargetFile = "$HOME\.serenade\scripts\talk2windows.js")

function AddVoiceCmd { param([string]$WakeWord, [string]$Basename, [string]$ScriptPath)
	$Basename = $Basename -replace "-"," "
	$ScriptPath = $ScriptPath -replace "\\","\\"
	"serenade.global().command(`"$WakeWord $Basename`",async(api)=>{await api.runShell(`"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`", [`"-NoProfile`",`"$ScriptPath`"]);});" | Add-Content "$TargetFile"
}

function AddVoiceCmdWithArgument { param([string]$WakeWord, [string]$Basename, [string]$ScriptPath)
	$Basename = $Basename -replace "-XYZ","-<%text%>"
	$Basename = $Basename -replace "-"," "
	$ScriptPath = $ScriptPath -replace "\\","\\"
	"serenade.global().command(`"$WakeWord $Basename`",async(api,matches)=>{await api.runShell(`"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`", [`"-NoProfile`",`"$ScriptPath`",matches.text]);});" | Add-Content "$TargetFile"
}

function AddVoiceCmdDEBUG { param([string]$WakeWord, [string]$Keywords, [string]$ScriptName)
	"serenade.global().command(`"$WakeWord $Keywords`",async(api)=>{await api.focusApplication(`"$Application`");await api.pressKey(`"return`");await api.typeText(`"$ScriptName.ps1`");await api.pressKey(`"return`");});" | Add-Content "$TargetFile"
}


try {
	"(1/4) Checking requirements..."
	if (!(Test-Path "$HOME\.serenade" -pathType container)) { throw "The Serenade app is missing - please download and install it from serenade.ai" }

	"(2/4) Using wake word `'$WakeWord`'..."
	$WakeWord = $WakeWord.toLower()

	$Scripts = Get-ChildItem "$FilePattern"
	"(3/4) Found $($Scripts.Count) PowerShell scripts in subfolder `'scripts`'..."

	"(4/4) Writing custom JavaScript file to '$TargetFile'..."
	"/* DO NOT EDIT! This file has been generated automatically by talk2windows */" | Set-Content "$TargetFile"
	foreach($Script in $Scripts) {
		$Basename = $Script.basename
		if ($Basename[0] -eq "_") { continue } # internal script, don't export it
		if ($Basename -like "*-XYZ*") {
			AddVoiceCmdWithArgument $WakeWord $Basename $Script
		} elseif ($Basename -like "*-is-*") {
			AddVoiceCmd $WakeWord $Basename $Script
			$Basename = $Basename -replace "-is-","'s-"
			AddVoiceCmd $WakeWord $Basename $Script
		} elseif ($Basename -like "i-am-*") {
			$Basename = $Basename -replace "-am-","'m-"
			AddVoiceCmd $WakeWord $Basename $Script

		} elseif ($Basename -like "i-will-*") {
			$Basename = $Basename -replace "-will-","'ll-"
			AddVoiceCmd $WakeWord $Basename $Script
		} else {
			AddVoiceCmd $WakeWord $Basename $Script 
		}
	}
	":-) Export to Serenade was successful - launch Serenade now to talk to Windows."
	exit 0 # success
} catch {
	Write-Error "ERROR: $($Error[0])"
	exit 1
}