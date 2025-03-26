<#
.SYNOPSIS
	Plays the given game
.DESCRIPTION
	This PowerShell script launches the Web browser with the given game.
#>

param([string]$name)

try {
	if ($name -like "*2048*") { $URL = "https://2048game.com/"
	} elseif ($name -like "*Agar*") { $URL = "https://agar.io"
	} elseif ($name -like "*Chess*") { $URL = "https://www.chess.com"
	} elseif ($name -like "*City*") { $URL = "https://virtualvacation.us/guess"
	} elseif ($name -like "*Cube*") { $URL = "https://bsehovac.github.io/the-cube/"
	} elseif ($name -like "*Pac*Man*") { $URL = "https://bobrov.dev/pacman-pwa/index.html"
	} elseif ($name -like "*Pinball*") { $URL = "https://abagames.github.io/crisp-game-lib-games/?flipo"
	} elseif ($name -like "*Powerline*") { $URL = "https://powerline.io"
	} elseif ($name -like "*Slither*") { $URL = "https://slither.io"
	} elseif ($name -like "*Street*") { $URL = "https://armorgames.com/street-skater-game/18047"
	} elseif ($name -like "*Soccer*") { $URL = "https://www.footballizer.com/match/play/"
	} elseif ($name -like "*Tetris*") { $URL = "https://tetris.com/play-tetris"
	} elseif ($name -like "*Thunder*") { $URL = "https://abagames.github.io/crisp-game-lib-games/?thunder"
	} elseif ($name -like "*Tic*Tac*Toe*") { $URL = "https://tmaiadev-tictactoe.netlify.app/"
	} elseif ($name -like "*Tower*") { $URL = "https://www.towergame.app/"
	} else { throw "Repeat it, please. What about Pinball?" }
	& "$PSScriptRoot/open-browser.ps1" $URL
	$reply = "Yeah, let's have fun!"
} catch { $reply = "Sorry: $($Error[0])" }
& "$PSScriptRoot/say.ps1" $reply
