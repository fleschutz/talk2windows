﻿<#
.SYNOPSIS
	Insert comma sign
.DESCRIPTION
	This PowerShell script inserts a comma sign (',').
#>

(New-Object -com wscript.shell).SendKeys(",")
& "$PSScriptRoot/_reply.ps1" "Comma sign."