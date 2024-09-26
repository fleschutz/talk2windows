<#
.SYNOPSIS
	Lists Headlines
.DESCRIPTION
	This PowerShell script lists the latest headlines in a table.
#>

function ListHeadlines { param([string]$RSS_URL)
	[xml]$Content = (Invoke-WebRequest -URI $RSS_URL -useBasicParsing).Content
	foreach ($item in $Content.rss.channel.item) {
		New-Object PSObject -Property @{ Headlines="$($item.title)"; URL="$($item.link)" }
	}
}

try {
	& "$PSScriptRoot/say.ps1" "OK."
	ListHeadlines "https://yahoo.com/news/rss/world" | Select-Object -property Headlines,URL | Out-GridView -wait
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
