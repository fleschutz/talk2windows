<#
.SYNOPSIS
	Lists Headlines
.DESCRIPTION
	This PowerShell script lists the latest headlines in a table.
.EXAMPLE
	PS> ./list-headlines
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function ListHeadlines { param([string]$RSS_URL)
	[xml]$Content = (Invoke-WebRequest -URI $RSS_URL -useBasicParsing).Content
	foreach ($item in $Content.rss.channel.item) {
		New-Object PSObject -Property @{ Headlines="$($item.title)"; URL="$($item.link)" }
	}
}

try {
	& "$PSScriptRoot/_reply.ps1" "OK."
	ListHeadlines "https://yahoo.com/news/rss/world" | Select-Object -property Headlines,URL | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
