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
	$Expr = $Expr -replace "pi","3.14159265359"
	$Expr = $Expr -replace "tau","6.283185307179586"
	$Expr = $Expr -replace "gravity","9.81"
	$Result = Invoke-Expression $Expr
	& "$PSScriptRoot/_reply.ps1" "It's $Result."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
