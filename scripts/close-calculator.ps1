<#
.SYNOPSIS
	Closes the calculator
.DESCRIPTION
	This PowerShell script closes the calculator application gracefully.
#>

Stop-Process -name "CalculatorApp"
