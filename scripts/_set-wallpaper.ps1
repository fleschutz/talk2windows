<#
.SYNOPSIS
	Sets a wallpaper
.DESCRIPTION
	Sets the given image file as desktop wallpaper (.JPG or .PNG supported)
.PARAMETER ImageFile
	Specifies the path to the image file
.PARAMETER Style
        Specifies either Fill, Fit, Stretch, Tile, Center, or Span (default)
.EXAMPLE
	PS> ./set-wallpaper C:\ocean.jpg
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([string]$ImageFile = "", [string]$Style = "Span")

function SetWallPaper {
	param([string]$Image, [ValidateSet('Fill', 'Fit', 'Stretch', 'Tile', 'Center', 'Span')][string]$Style)
 
	$WallpaperStyle = switch($Style) {
	"Fill"    {"10"}
	"Fit"     {"6"}
	"Stretch" {"2"}
	"Tile"    {"0"}
	"Center"  {"0"}
	"Span"    {"22"}
	}
 
	if ($Style -eq "Tile") {
		New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallpaperStyle -PropertyType String -Value $WallpaperStyle -Force
		New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name TileWallpaper -PropertyType String -Value 1 -Force
	} else {
		New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallpaperStyle -PropertyType String -Value $WallpaperStyle -Force
		New-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name TileWallpaper -PropertyType String -Value 0 -Force
	}
	Add-Type -TypeDefinition @" 
	using System; 
	using System.Runtime.InteropServices;
  
	public class Params
	{ 
	    [DllImport("User32.dll",CharSet=CharSet.Unicode)] 
	    public static extern int SystemParametersInfo (Int32 uAction, 
							   Int32 uParam, 
							   String lpvParam, 
							   Int32 fuWinIni);
	}
"@ 
  
	$SPI_SETDESKWALLPAPER = 0x0014
	$UpdateIniFile = 0x01
	$SendChangeEvent = 0x02
  
	$fWinIni = $UpdateIniFile -bor $SendChangeEvent
  
	$ret = [Params]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $Image, $fWinIni)
}
 
try {
	SetWallPaper -Image $ImageFile -Style $Style
	exit 0 # success
} catch {
	& "$PSScriptRoot/say.ps1" "Sorry: $($Error[0])"
	exit 1
}
