<#
.SYNOPSIS
	Opens Jenkins <XYZ>
.DESCRIPTION
	This PowerShell script launches the Web browser with Jenkins.
#>

param([string]$name)

switch($name) {
"Blog"		{ $URL = "https://www.jenkins.io/blog/" }
"Boston"	{ $URL = "http://rocket:8080" }
"Docs"		{ $URL = "https://www.jenkins.io/doc/book/" }
"Documentation" { $URL = "https://www.jenkins.io/doc/book/" }
"Downloads"     { $URL = "https://www.jenkins.io/download/" }
"Homepage"	{ $URL = "https://www.jenkins.io" }
"Germany"	{ $URL = "http://jenkins.ad.atcsim.de/jenkins/" }
"Glossary"	{ $URL = "https://www.jenkins.io/doc/book/glossary/" }
"Handbook"      { $URL = "https://www.jenkins.io/doc/book/" }
"Kaufbeuren"	{ $URL = "http://jenkins.ad.atcsim.de/jenkins/" }
"Manual"	{ $URL = "https://www.jenkins.io/doc/book/" }
"Plugins"	{ $URL = "https://plugins.jenkins.io/" }
"Tutorials"     { $URL = "https://www.jenkins.io/doc/tutorials/" }
"Website"	{ $URL = "https://www.jenkins.io" }
"USA"		{ $URL = "http://rocket:8080" }
default		{ & "$PSScriptRoot/say.ps1" "Sorry, say again?"; exit 1 }
}
& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" $URL
exit 0 # success
