﻿<#
.SYNOPSIS
	Insert Slash sign
.DESCRIPTION
	This PowerShell script inserts the slash sign at the current text cursor position.
#>

(New-Object -com wscript.shell).SendKeys("/")
& "$PSScriptRoot/say.ps1" "Slash inserted."
