<#
.SYNOPSIS
	Exports scripts to Serenade 
.DESCRIPTION
	This script exports all PowerShell scripts to Serenade to execute them by voice.
.PARAMETER WakeWord
	Specifies the wake word
.PARAMETER FilePattern
	Specifies the file pattern for the scripts
.PARAMETER Application
	Specifies the application to be used
.PARAMETER TargetFile
	Specifies the target file 
.EXAMPLE
	PS> ./export-to-serenade.ps1 
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#requires -version 2

param([string]$WakeWord = "Windows", [string]$FilePattern = "$PSScriptRoot/Scripts/*.ps1", [string]$Application = "terminal", [string]$TargetFile = "$HOME\.serenade\scripts\talk2windows.js")

try {
	$StopWatch = [system.diagnostics.stopwatch]::startNew()

	"Using wake word `'$WakeWord`'..."
	$Scripts = Get-ChildItem "$FilePattern"
	"Found $($Scripts.Count) scripts here..."
	"Writing the custom JavaScript file: $TargetFile..."

	"/* DO NOT EDIT! This file has been generated automatically by export-to-serenade.ps1 */" | Set-Content "$TargetFile"
	foreach ($Script in $Scripts) {
		$ScriptName = $Script.basename
		$Keyword = $ScriptName -replace "-"," "
		"serenade.global().command(`"$($WakeWord.toLower()) $Keyword`",async(api)=>{await api.focusApplication(`"$Application`");await api.pressKey(`"return`");await api.typeText(`"$ScriptName.ps1`");await api.pressKey(`"return`");});" | Add-Content "$TargetFile"
	}

	[int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
	"Successfully exported to Serenade in $Elapsed sec"
	exit 0 # success
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
