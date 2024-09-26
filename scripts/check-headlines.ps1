<#
.SYNOPSIS
	Checks the latests headlines
.DESCRIPTION
	This PowerShell script tells the latest headlines by text-to-speech (TTS).
#>

param([string]$RSS_URL = "https://yahoo.com/news/rss/world", [int]$MaxCount = 8)

try {
	[xml]$Content = (invoke-webRequest -uri $RSS_URL -useBasicParsing).Content
	[int]$Count = 0
	foreach ($item in $Content.rss.channel.item) {
		& "$PSScriptRoot/say.ps1" "$($item.title)"
		$Count++
		if ($Count -eq $MaxCount) { break }
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
