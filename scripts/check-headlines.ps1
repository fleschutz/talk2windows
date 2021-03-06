<#
.SYNOPSIS
	Checks the latests headlines
.DESCRIPTION
	This PowerShell script tells the latest headlines by text-to-speech (TTS).
.PARAMETER RSS_URL
	Specifies the URL to the RSS feed
.PARAMETER MaxCount
	Specifies the number of news to list
.EXAMPLE
	PS> ./check-headlines
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$RSS_URL = "https://yahoo.com/news/rss/world", [int]$MaxCount = 8)

try {
	[xml]$Content = (invoke-webRequest -uri $RSS_URL -useBasicParsing).Content
	[int]$Count = 0
	foreach ($item in $Content.rss.channel.item) {
		& "$PSScriptRoot/_reply.ps1" "$($item.title)"
		$Count++
		if ($Count -eq $MaxCount) { break }
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
