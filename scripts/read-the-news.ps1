<#
.SYNOPSIS
	Reads the news
.DESCRIPTION
	This PowerShell script reads the latest news by text-to-speech (TTS).
#>

param([string]$RSS_URL = "https://yahoo.com/news/rss/world", [int]$maxCount = 10)

try {
	[xml]$content = (Invoke-WebRequest -URI $RSS_URL -useBasicParsing).Content
	[int]$count = 0
	foreach($item in $content.rss.channel.item) {
		& "$PSScriptRoot/say.ps1" "$($item.title)"
		$count++
		if ($count -eq $maxCount) { break }
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
