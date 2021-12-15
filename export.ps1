<#
.SYNOPSIS
	Exports to Serenade 
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
	PS> ./export.ps1 
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

#requires -version 2

param([string]$WakeWord = "Windows", [string]$FilePattern = "$PSScriptRoot/scripts/*.ps1", [string]$Application = "terminal", [string]$TargetFile = "$HOME\.serenade\scripts\talk2windows.js")

try {
	"(1) Wake word is: `'$WakeWord`'"

	$Scripts = Get-ChildItem "$FilePattern"
	"(2) Found $($Scripts.Count) PowerShell scripts in subfolder `'scripts`'"

	"(3) Writing the custom JavaScript file to: $TargetFile..."
	"/* DO NOT EDIT! This file has been generated automatically by talk2windows */" | Set-Content "$TargetFile"
	foreach ($Script in $Scripts) {
		$ScriptName = $Script.basename
		$Keyword = $ScriptName -replace "-"," "
		"serenade.global().command(`"$($WakeWord.toLower()) $Keyword`",async(api)=>{await api.focusApplication(`"$Application`");await api.pressKey(`"return`");await api.typeText(`"$ScriptName.ps1`");await api.pressKey(`"return`");});" | Add-Content "$TargetFile"
	}

	"Export to Serenade was successful. Now, launch Serenade to talk to Windows :-)"
	exit 0 # success
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
