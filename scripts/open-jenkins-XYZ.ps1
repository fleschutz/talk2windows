<#
.SYNOPSIS
	Opens Jenkins <XYZ>
.DESCRIPTION
	This PowerShell script launches the Web browser with Jenkins.
#>

param([string]$name)

switch($name) {
"Boston"	{ $URL = "http://rocket:8080" }
"Homepage"	{ $URL = "https://www.jenkins.io" }
"Germany"	{ $URL = "http://jenkins.ad.atcsim.de/jenkins/" }
"Kaufbeuren"	{ $URL = "http://jenkins.ad.atcsim.de/jenkins/" }
"Manual"	{ $URL = "https://www.jenkins.io/doc/book/" }
"Plugins"	{ $URL = "https://plugins.jenkins.io/" }
"Website"	{ $URL = "https://www.jenkins.io" }
"USA"		{ $URL = "http://rocket:8080" }
default		{ & "$PSScriptRoot/say.ps1" "Sorry, say again?"; exit 1 }
}
& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" $URL
exit 0 # success
