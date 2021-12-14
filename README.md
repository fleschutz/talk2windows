TALK 2 WINDOWS
==============
Control Windows by using your voice. Required is Windows 10 or later, a microphone and loudspeaker, the Serenade application (free), and the PowerShell scripts in this repository.


🔧 Installation
--------------
1. Download and install *Serenade* from https://serenade.ai/ (Serenade is freely available for Linux, MacOS, and Windows).
2. Download and install the *talk2windows* repository, allow the script execution and set the search path to the *Scripts* subfolder (see the [FAQ page](Docs/FAQ.md) for details).
3. Execute: `./export-to-serenade.ps1` in the *Scripts* subfolder, this creates a custom JavaScript file at `$HOME/.serenade/scripts/talk2windows.js` using the wake word 'Windows'. 


🗣 Usage
-------
1. Launch *Serenade* and click into the circle to enable Listening mode.
2. Launch *Windows Terminal* and click into the window.
3. Speak into the microphone: **"*Windows, open calculator*"** - this executes the PowerShell script `open-calculator.ps1` and this script launches the calculator application.

More supported voice commands are:

*"Windows, [greeting]."*
-------------------------
Greets the computer, just replace [greeting] by: `good evening`, `good morning`, `good night`, `happy christmas`, `happy easter`, `happy father's day`, `happy halloween`, `happy hanukkah`, `happy holidays`, `happy kwanzaa`, `happy mother's day`, `happy new year`, `happy ramadan`, `happy St. Patrick's day`, `happy thanksgiving`, `happy valentine's day`, `hello`, `hi`, `merry christmas`, or `say hello`.

*"Windows, open [app]."*
------------------------
Launches the given application, replace [app] by: `3D-Viewer`, `Calculator`,  `Chrome`, `Edge`, `Firefox`, `Git Extensions`, `Magnifier`, `Microsoft Paint`, `Microsoft Store`, `Netflix`, `Notepad`, `OBS Studio`, `Outlook`, `Paint 3D`, `Spotify`, `Thunderbird`, `Visual Studio`, or `Windows Terminal`.

When finished say: *"Computer, close [app]"* to close the application.


*"Windows, check [item]."*
--------------------------
Lets the computer check something, replace [item] by: `Bitcoin rate`, `Christmas`, `CPU`, `date`, `dawn`, `day`, `DNS`, `drives`, `dusk`, `Easter Sunday`, `Earth` (fun), `Ether rate`, `headlines`, `Independence Day`, `ISS position`, `midnight`, `moon phase`, `month`, `New Year`, `noon`, `operating system`, `ping`, `Santa`, `sunrise`, `sunset`, `swap space`, `tea time`, `Tether rate`, `time`, `time zone`, `up-time`, `VPN`, `weather`, `week`, `wind`, `year`, or `zenith`.


*"Windows, open [letter] drive."*
-------------------------------
Launches the File Explorer with the given drive - replace [letter] by: `C:`, `D:`, `E:`, `F:`, `G:`, or `M:`.

When finished say: *"Computer, close file explorer"* to close the File Explorer.


*"Windows, open [name] folder."*
--------------------------------
Launches the File Explorer with the given folder - replace [name] by: `apps`, `autostart`, `desktop`, `documents`, `downloads`, `Dropbox`, `home`, `music`, `OneDrive`, `pictures`, `recycle bin`, `repos`, `temporary`, or `videos`.

When finished say: *"Computer, close file explorer"* to close the File Explorer.


*"Windows, open [name] website."*
---------------------------------
Launches the default Web browser with the given website - replace [name] by: `Amazon`, `Apple`, `Baidu`, `BBC`, `Bing`, `BitBucket`, `CDC`, `CIA`, `CNN`, `Discord`, `DistroWatch`, `Dropbox`, `eBay`, `Facebook`, `FBI`, `Flipboard`, `FourSquare`, `FRITZ!Box`, `FRITZ!Repeater`, `GitHub`, `GliderTracker`, `HolidayCheck`, `HRworks`, `Instagram`, `IPFS`, `Microsoft`, `NASA`, `NBC`, `Netflix`, `Notepad`, `Outdoor Active`, `PayPal`, `Pinterest`, `Pixabay`, `Plex`, `Serenade`, `Slashdot`, `Snap Store`, `Starbucks`, `Tesla`, `TikTok`, `Toggl`, `Topo Map`, `Twitter`,  `UFA`, `Unsplash`, `Walmart`, `WhatsApp`, `White House`, `Windy`, `Wikipedia`, `Wired`, `Wolfram Alpha`, `World News`, `Yahoo`, or `YouTube`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, show [name] city."*
------------------------------
Launches the default Web browser with Google Maps at the given city - replace [NAME] by: `Atlanta`, `Barcelona`, `Berlin`, `Boston`, `Cairo`, `Calgary`, `Cape Town`, `Chicago`, `Dallas`, `Denver`, `Dubai`, `Dublin`, `Frankfurt`, `Hamburg`, `Hong Kong`, `Honolulu`, `Jerusalem`, `Kansas`, `Las Vegas`, `Lisbon`, `London`, `Los Angeles`, `Madrid`, `Mexico`, `Miami`, `Montreal`, `Moscow`, `Munich`, `New York`, `Panama`, `Paris`, `Rome`, `San Francisco`, `Seattle`, `Singapore`, `Sydney`, `Tokyo`, `Toronto`, `Tunis`, `Vienna`, `Washington`, or `Zurich`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, play [genre] music."*
-------------------------------
Launches the default Web browser and plays the given music genre - replace [genre] by: `blues`, `classical`, `country`, `dance`, `folk`, `indie`, `jazz`, `metal`, `pop`,`RnB`, or `rock`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, play radio [station]."*
-------------------------------
Launches the default Web browser and tunes into an internet radio station - replace [station] by: `7`, `AFN Stuttgart`, `Arabella`, `Bob`, `Club Mix`, `Dance FM`, `FFN`, `Galaxy`, `Gong`, `Ibiza`, `Jam FM`, `Kiss Kiss`, `Malibu`, `N-JOY`, `Paloma`, or `You FM`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, play [name] sound."*
-------------------------------
* starts the playback of the given sound - replace [name] by: `bee`, `beep`, `cat`, `cow`, `dog`, `donkey`, `elephant`, `elk`, `frog`, `goat`, `gorilla`, `horse`, `lion`, `parrot`, `pig`, `rattlesnake`, `vulture`, or `wolf`.


*"Windows, play [name] game."*
------------------------------
Launches the default Web browser and plays the given game - replace [name] by: `2048`, `Chess`, `Cube`, `Pacman`, `Tetris`, `TicTacToe`, or `Tower`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, use a [category] wallpaper."*
----------------------------------------
Sets a random photo from Unsplash as desktop background, just replace [category] by: `beach`, `car`, `city`, `military`, `nature`, `plane`, `random`, `space`, or `winter`.


*"Windows, open [name] settings."*
----------------------------------
Launches the Windows settings - replace [name] by: `activation`, `apps`, `background`, `backup`, `bluetooth`, `color`, `date`, `default apps`, `developer`, `display`, `ethernet`, `lockscreen`, `maps`, `printer`, `proxy`, `recovery`, `speech`, `start`, `system` *(the top level settings!)*, `taskbar`, `themes`, `time`, `update`, `USB`, `VPN`, or `Wifi`.

When finished say: *"Computer, close system settings"* to close the Windows settings.


*"Windows, show [name] manual."*
--------------------------------
Launches the default Web browser with the given online manual - replace [name] by: `Ant`, `Apple`, `Audacity`, `Azure`, `Bash`, `Blender`, `Chrome`, `Edge`, `Firefox`, `GCC`, `Git`, `Jenkins`, `MSBuild`, `OBS Studio`, `PowerShell`, `Serenade`, `SystemRescue`, `Toyota`, `Vim`, `Voice` *(yes, this page!)*, `Volkswagen`, or `Windows`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


*"Windows, show [name] rate."*
--------------------------------
Launches the default Web browser with the given exchange rate. Just replace [name] by: `Bitcoin`, `Ether`, `Euro`, `Tether`, or `US dollar`.

When finished say: *"Close tab"* or: *"Computer, close [name] browser"* to close the Web browser.


🔊 Audio Voice Commands
------------------------
* *"Windows, turn volume off"* - mutes audio
* *"Windows, shut up"* - mutes the audio
* *"Windows, turn volume on"* - unmutes audio
* *"Windows, turn volume up"* - increases the audio volume by 10%
* *"Windows, turn volume down"* - decreases the audio volume by 10%


💭 Various Voice Commands
-------------------------
* *"Windows, connect VPN"* - connects to VPN
* *"Windows, come on"*
* *"Windows, give me five"*
* *"Windows, locate my phone"*
* *"Windows, repeat last reply"* - repeats the last reply given
* *"Windows, roll a dice"* - returns a dice number
* *"Windows, sorry"* 
* *"Windows, tell a joke."*
* *"Windows, tell a quote."*
* *"Windows, thank you."*


*"Windows, [question]"*
-------------------------
Ask Windows a question, replace [question] by: `are you here?`, `are you listening?`, `are you there?`, `can you talk?`, `do you listen?`, `how are you?`, `how do you do?`, `how old are you?`, `who is your father?`, or `you can talk?`.


*"Windows, [farewell]."*
-------------------------
Say good-bye to Windows, replace [farewell] by: `bye`, `bye-bye`, `good-bye`, `I'll be back`, `see you`, or `see you later`.
