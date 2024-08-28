<#
.SYNOPSIS
	Opens the Web browser
.DESCRIPTION
	This PowerShell script launches the default Web browser with a given URL.
#>

param([string]$URL)
Start-Process $URL
