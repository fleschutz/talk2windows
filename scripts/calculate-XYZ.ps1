<#
.SYNOPSIS
	Calculates an expression
.DESCRIPTION
	This PowerShell script calculates the given expression and speaks the result by text-to-speech (TTS).
.EXAMPLE
	PS> ./calculate-XYZ "one plus two"
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Expr = "")

try {
	$Expr = $Expr -replace "one","1"
	$Expr = $Expr -replace "two","2"
	$Expr = $Expr -replace "three","3"
	$Expr = $Expr -replace "four","4"
	$Expr = $Expr -replace "five","5"
	$Expr = $Expr -replace "six","6"
	$Expr = $Expr -replace "seven","7"
	$Expr = $Expr -replace "eight","8"
	$Expr = $Expr -replace "nine","9"
	$Expr = $Expr -replace "ten","10"
	$Expr = $Expr -replace "plus","+"
	$Expr = $Expr -replace "minus","-"
	$Expr = $Expr -replace "multiplied","*"
	$Expr = $Expr -replace "divided","/"
	$Expr = $Expr -replace "by",""
	$Result = Invoke-Expression $Expr
	& "$PSScriptRoot/_reply.ps1" "It's $Result."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
