<#
.SYNOPSIS
	Translates to French
.DESCRIPTION
	This PowerShell script translates the given text to French and speaks it by text-to-speech (TTS).
.PARAMETER Text
	Specifies the text to translate
.EXAMPLE
	PS> ./translate-XYZ-to-french "Hello World"
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Text = "")

function UseLibreTranslate { param([string]$Text, [string]$SourceLangCode, [string]$TargetLangCode)
	$Parameters = @{"q"="$Text"; "source"="$SourceLangCode"; "target"="$TargetLangCode"; }
	$Result = (Invoke-WebRequest -Uri https://translate.mentality.rip/translate -Method POST -Body ($Parameters|ConvertTo-Json) -ContentType "application/json" -useBasicParsing).content | ConvertFrom-Json
	return $Result.translatedText
}

try {
	$Translation = UseLibreTranslate $Text "en" "fr"
	& "$PSScriptRoot/say.ps1" "French" "$Translation"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
