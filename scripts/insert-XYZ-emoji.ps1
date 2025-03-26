<#
.SYNOPSIS
	Inserts an emoji
.DESCRIPTION
	This PowerShell script inserts the given emoji Unicode character.
#>

param([string]$name = "")

function name2emoji { param([string]$name)
     switch($name) { # sorted alphabetically
    "banana"     {return "🍌"}
    "bone"       {return "🦴"}
    "cake"       {return "🍰"}
    "cat"        {return "🐱"}
    "dog"        {return "🐶"}
    "floppy disk"{return "💾"}
	"motor bike" {return "🛵"}
    "mouse"      {return "🐭"}
	"nose"       {return "👃"}
	"rocket"     {return "🚀"}
	"shrugging"  {return "🤷"}
	"soccer"     {return "⚽️"}
    default { throw "Repeat it, please." }
    }
}

try {
	[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	[string]$emoji = name2emoji $name
	Set-Clipboard -value $emoji
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	& "$PSScriptRoot/say.ps1" "Your $name."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
