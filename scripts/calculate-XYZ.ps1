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

param([string]$Part1 = "", [string]$Part2 = "", [string]$Part3 = "", [string]$Part4 = "", [string]$Part5 = "", [string]$Part6 = "", [string]$Part7 = "")

try {
	$Expr = "$Part1 $Part2 $Part3 $Part4 $Part5 $Part6 $Part7"
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
	$Expr = $Expr -replace " and a half",".5"
	$Expr = $Expr -replace " and a quarter",".25"
	$Expr = $Expr -replace "point","."
	$Expr = $Expr -replace "plus","+"
	$Expr = $Expr -replace "minus","-"
	$Expr = $Expr -replace "multiplied by","*"
	$Expr = $Expr -replace "divided by","/"
	$Expr = $Expr -replace "by",""
	$Expr = $Expr -replace "e","2.71828182845905"
	$Expr = $Expr -replace "pi","3.14159265358979"
	$Expr = $Expr -replace "tau","6.283185307179586"
	$Expr = $Expr -replace "gravity","9.81"
	$Result = Invoke-Expression $Expr
	& "$PSScriptRoot/say.ps1" "It's $Result"
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
