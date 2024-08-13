param([string]$t="")
$TTS=New-Object -ComObject SAPI.SPVoice
foreach($v in $TTS.GetVoices()){if($v.GetDescription() -like "*- English*"){$TTS.Voice=$v}}
[void]$TTS.Speak($t)

if("$env:TEMP" -ne ""){$tmpDir="$env:TEMP"
}elseif("$env:TMP" -ne ""){$tmpDir="$env:TMP"
}elseif($IsLinux){$tmpDir="/tmp"
}else{$tmpDir="C:\Temp" }
"$t" > "$tmpDir/talk2windows.txt"
exit 0
