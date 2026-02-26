<#
.SYNOPSIS
	Opens Jenkins <name>
.DESCRIPTION
	This PowerShell script launches the Web browser with the given Jenkins server/service/website/etc.
#>

param([string]$name)

switch($name) {
"1"	        { $URL = "http://jenkins.ad.atcsim.de/jenkins/" }
"Blog"		{ $URL = "https://www.jenkins.io/blog/" }
"Boston"	{ $URL = "https://jenkins-ma.ufainc.com:8443/" }
"Docs"		{ $URL = "https://www.jenkins.io/doc/book/" }
"Documents"     { $URL = "https://www.jenkins.io/doc/book/" }
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
"Boston"	{ $URL = "https://jenkins-ma.ufainc.com:8443/" }
default		{ & "$PSScriptRoot/say.ps1" "Sorry, I don't know this Jenkins server or service"; exit 1 }
}
& "$PSScriptRoot/say.ps1" "Hold on."
& "$PSScriptRoot/open-browser.ps1" $URL
exit 0 # success
