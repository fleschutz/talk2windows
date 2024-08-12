<#
.SYNOPSIS
	Check audio 
.DESCRIPTION
	This PowerShell script performs an audio sound check.
#>

function Speak { param([string]$Text)
	" < $Text"
	[void]$Voice.speak("$Text")
}

try {
	$Voice = new-object -ComObject SAPI.SPVoice
        foreach($OtherVoice in $Voice.GetVoices()) {
		if ($OtherVoice.GetDescription() -like "*- English*") { $Voice.Voice = $OtherVoice }
	}
	$DefaultVolume = $Voice.volume
	$DefaultRate = $Voice.rate
	Speak("Default audio volume is $DefaultVolume% at a speed rate of $DefaultRate.")

	$Voice.volume = 100
	Speak("Audio volume is now 100%.")
	$Voice.volume = 75
	Speak("It's 75% now.")
	$Voice.volume = 50
	Speak("It's 50% now.")
	$Voice.volume = 25
	Speak("It's 25% now.")
	$Voice.volume = $DefaultVolume

	$Voice.rate = -10
	Speak("Speed rate -10 is extremely slow.")
	$Voice.rate = -5
	Speak("-5 is very slow.")
	$Voice.rate = -3
	Speak("-3 is slow.")
	$Voice.rate = 0
	Speak("0 is normal.")
	$Voice.rate = 2
	Speak("2 is fast.")
	$Voice.rate = 5
	Speak("5 is very fast.")
	$Voice.rate = 10
	Speak("10 is extremely fast.")
	$Voice.rate = $DefaultRate

	foreach($OtherVoice in $Voice.GetVoices()) {
		$Voice.Voice = $OtherVoice
		$Description = $OtherVoice.GetDescription()
		Speak("I'm the voice called $Description")
	}
	exit 0 # success
} catch {
	"Sorry: $($Error[0])"
	exit 1
}
