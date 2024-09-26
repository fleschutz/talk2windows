<#
.SYNOPSIS
	Plays a Sound File 
.DESCRIPTION
	This PowerShell script plays a sound file in .MP3/.WAV file format.
.PARAMETER Path
	Specifies the path to the sound file
.EXAMPLE
	PS> ./_play-sound C:\thunder.mp3
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Path = "")

try {
	$FullPath = (get-childItem $Path).fullname
	$Filename = (get-item "$FullPath").name

	add-type -assemblyName PresentationCore
	$MediaPlayer = new-object System.Windows.Media.MediaPlayer

	do {
		$MediaPlayer.open($FullPath)
		$Milliseconds = $MediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds
	} until ($Milliseconds)

	[int]$Minutes = $Milliseconds / 60000
	[int]$Seconds = ($Milliseconds / 1000) % 60
	"Playing $Filename for $($Minutes.ToString('00')):$($Seconds.ToString('00')) sec..."
	$MediaPlayer.Volume = 1
	$MediaPlayer.play()
	start-sleep -milliseconds $Milliseconds
	$MediaPlayer.stop()
	$MediaPlayer.close()
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
