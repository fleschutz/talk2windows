<#
.SYNOPSIS
	Takes a single screenshot
.DESCRIPTION
	This PowerShell script takes a single screenshot and saves it into the user's screenshots folder.
#>

function GetScreenshotsDir {
        if ($IsLinux) {
		$path = "$HOME/Pictures"
		if (-not(Test-Path "$path" -pathType container)) { throw "Pictures folder at $path doesn't exist (yet)"}
		if (Test-Path "$path/Screenshots" -pathType container) { return "$path/Screenshots" }
	} else {
		$path = [Environment]::GetFolderPath('MyPictures')
 		if (-not(Test-Path "$path" -pathType container)) { throw "Pictures folder at $path doesn't exist (yet)" }
		if (Test-Path "$path/Screenshots" -pathType container) { return "$path/Screenshots" }
	}
	return $path
}

function TakeScreenshot { param([string]$filepath)
	Add-Type -Assembly System.Windows.Forms            
	$screenBounds = [Windows.Forms.SystemInformation]::VirtualScreen
	$screenshotObj = New-Object Drawing.Bitmap $screenBounds.Width, $screenBounds.Height
	$drawingGraphics = [Drawing.Graphics]::FromImage($screenshotObj)
	$drawingGraphics.CopyFromScreen( $screenBounds.Location, [Drawing.Point]::Empty, $screenBounds.Size)
	$drawingGraphics.Dispose()
	$screenshotObj.Save($filepath)
	$screenshotObj.Dispose()
}

try {
	& "$PSScriptRoot/say.ps1" "Hold on..."

	$targetDir = GetScreenshotsDir
	$filepath = "$targetDir/IMG_" + (Get-Date).ToString('yyyyMMdd_HHmmss') + ".png"
	TakeScreenshot $filepath

	& "$PSScriptRoot/say.ps1" "Saved into screenshots folder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
