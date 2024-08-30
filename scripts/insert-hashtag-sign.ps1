<#
.SYNOPSIS
	Insert hash tag
.DESCRIPTION
	This PowerShell script inserts a hash tag sign ('#').
#>

(New-Object -com wscript.shell).SendKeys("#")
& "$PSScriptRoot/_reply.ps1" "Hashtag inserted."
