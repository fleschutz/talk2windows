<#
.SYNOPSIS
	Opens YouTube with a search item
.DESCRIPTION
	This PowerShell script launches the Web browser with YouTube.com and a search item.
#>

param([string]$word1 = "", [string]$word2 = "", [string]$word3 = "")

$searchItem = $word1
if ($word2 -ne "") { $searchItem += "+$word2" }
if ($word3 -ne "") { $searchItem += "+$word3" }
& "$PSScriptRoot/open-browser.ps1" "https://www.youtube.com/results?search_query=$searchItem"
& "$PSScriptRoot/say.ps1" "Here's YouTube with $word1 $word2 $word3."
