param([string]$txt="")
$TTS=New-Object -ComObject SAPI.SPVoice
foreach($v in $TTS.GetVoices()) {if($v.GetDescription() -like "*- English*") {$TTS.Voice=$v}}
[void]$TTS.Speak($txt)

if("$env:TEMP" -ne "")	{	$TempDir="$env:TEMP"
} elseif("$env:TMP" -ne "") {	$TempDir="$env:TMP"
} elseif($IsLinux) {		$TempDir="/tmp"
} else{				$TempDir="C:\Temp" }
"$text" > "$TempDir/talk2windows_last_reply.txt"
exit 0
