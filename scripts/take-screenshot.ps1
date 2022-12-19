<#
.SYNOPSIS
	Takes a single screenshot
.DESCRIPTION
	This PowerShell script takes a single screenshot and saves it into the user's screenshots folder.
.EXAMPLE
	PS> ./take-screenshot
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

function GetScreenshotsFolder {
        if ($IsLinux) {
                $Path = "$HOME/Pictures"
                if (-not(Test-Path "$Path" -pathType container)) { throw "Pictures folder at $Path doesn't exist (yet)"}
                if (Test-Path "$Path/Screenshots" -pathType container) { $Path = "$Path/Screenshots" }
        } else {
                $Path = [Environment]::GetFolderPath('MyPictures')
                if (-not(Test-Path "$Path" -pathType container)) { throw "Pictures folder at $Path doesn't exist (yet)" }
                if (Test-Path "$Path\Screenshots" -pathType container) { $Path = "$Path\Screenshots" }
        }
        return $Path
}

function TakeScreenshot { param([string]$FilePath)
	Add-Type -Assembly System.Windows.Forms            
	$ScreenBounds = [Windows.Forms.SystemInformation]::VirtualScreen
	$ScreenshotObject = New-Object Drawing.Bitmap $ScreenBounds.Width, $ScreenBounds.Height
	$DrawingGraphics = [Drawing.Graphics]::FromImage($ScreenshotObject)
	$DrawingGraphics.CopyFromScreen( $ScreenBounds.Location, [Drawing.Point]::Empty, $ScreenBounds.Size)
	$DrawingGraphics.Dispose()
	$ScreenshotObject.Save($FilePath)
	$ScreenshotObject.Dispose()
}

try {
	$TargetFolder = GetScreenshotsFolder
	$Time = (Get-Date)
	$Filename = "$($Time.Year)-$($Time.Month)-$($Time.Day)T$($Time.Hour)-$($Time.Minute)-$($Time.Second).png"
	$FilePath = (Join-Path $TargetFolder $Filename)
	TakeScreenshot $FilePath

	& "$PSScriptRoot/_reply.ps1" "OK, saved into screenshots folder."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
