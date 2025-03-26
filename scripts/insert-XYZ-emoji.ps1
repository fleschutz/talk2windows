<#
.SYNOPSIS
	Inserts an emoji
.DESCRIPTION
	This PowerShell script inserts the given emoji Unicode character.
#>

param([string]$name = "")

function name2emoji { param([string]$name)
	switch($name) { # sorted alphabetically
	"alarm"      {return "🚨"}
	"alien"      {return "👽"}
	"apple"      {return "🍏"}
	"baby"       {return "👶"}
	"banana"     {return "🍌"}
	"beer"       {return "🍺"}
	"bicycle"    {return "🚲"}
	"bone"       {return "🦴"}
	"bus"        {return "🚌"}
	"bye"        {return "👋"}
	"cake"       {return "🍰"}
	"call"       {return "📞?"}
	"call me"    {return "📞?"}
	"car"        {return "🚗"}
	"cat"        {return "🐱"}
	"clapping"   {return "👏"}
	"clown"      {return "🤡"}
	"coffee"     {return "☕️"}
	"cookie"     {return "🍪"}
	"cool"       {return "😎"}
	"crown"      {return "👑"}
	"dice"       {return "🎲"}
	"devil"      {return "👹"}
	"dog"        {return "🐶"}
	"ear"        {return "👂"}
	"earth"      {return "🌍"}
	"eyes"       {return "👀"}
	"floppy disk"{return "💾"}
	"fire"       {return "🔥"}
	"frog"       {return "🐸"}
	"fuck off"   {return "🖕"}
	"germany"    {return "🇩🇪"}
	"ghost"      {return "👻"}
	"hammer"     {return "🔨"}
	"hang loose" {return "🤙"}
	"heart"      {return "❤️"}
	"house"      {return "🏠"}
	"king"       {return "🤴"}
	"lip stick"  {return "💄"}
	"microphone" {return "🎤"}
	"motor bike" {return "🏍"}
	"mouse"      {return "🐭"}
	"mouth"      {return "👄"}
	"nose"       {return "👃"}
	"plane"      {return "✈️"}
	"please"     {return "🙏"}
	"prince"     {return "🤴"}
	"question"   {return "❔"}
	"rainbow"    {return "🌈"}
	"ring"       {return "💍"}
	"robot"      {return "🤖"}
	"rocket"     {return "🚀"}
	"shit"       {return "💩"}
	"shrugging"  {return "🤷"}
	"skull"      {return "💀"}
	"smiley"     {return "😀"}
	"snow flake" {return "❄️"}
	"soccer"     {return "⚽️"}
	"star"       {return "⭐️"}
	"sun"        {return "☀️"}
	"sunrise"    {return "🌅"}
	"sunset"     {return "🌅"}
	"swords"     {return "⚔️"}
	"telephone"  {return "☎️"}
	"thumb up"   {return "👍"}
	"thumb down" {return "👎"}
	"trumpet"    {return "🎺"}
	"watch"      {return "⌚️"}
	"wine"       {return "🍷"}
	default      { throw "The $name emoji is new to me" }
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
