TALK 2 WINDOWS
==============
Control Windows by using your voice besides keyboard and mouse. Required is Windows 10 or later, a microphone and loudspeaker, the Serenade application (free), and the PowerShell scripts in this repository.


🔧 Installation
---------------
1. Download and install *Serenade* from https://serenade.ai/ (Serenade is freely available for Linux, MacOS, and Windows, during installation no plugin and no programming language need to be selected).
2. Download and install the *talk2windows* repository
3. Allow execution of PowerShell scripts (see the [FAQ page](docs/FAQ.md) for details).
4. Execute: `./export.ps1` in the repository (this creates a custom JavaScript file for Serenade). 


🗣 Usage
-------
1. Launch *Serenade*.
2. Click the circle to enable Listening mode.
3. Speak into the microphone: **"*Windows, open calculator*"** - this executes the script `open-calculator.ps1` and this script launches the calculator application.

More supported voice commands are:


👋 *"Windows, [greeting]."*
----------------------------
Say hello to Windows, simply replace [greeting] by: `good evening`, `good morning`, `good night`, `happy christmas`, `happy easter`, `happy father's day`, `happy halloween`, `happy hanukkah`, `happy holidays`, `happy kwanzaa`, `happy mother's day`, `happy new year`, `happy ramadan`, `happy St. Patrick's day`, `happy thanksgiving`, `happy valentine's day`, `hello`, `hey`, `hi`, `merry christmas`, `morning`, `nice to meet you`, `say hello`, or `you alright?`.


*"Windows, open [app]."*
------------------------
Launches an application, just replace [app] by: `3D-Viewer`, `calculator`,  `Chrome`, `Edge`, `Firefox`, `Git Extensions`, `magnifier`, `Microsoft Paint`, `Microsoft Store`, `Netflix`, `Notepad`, `OBS Studio`, `Outlook`, `Paint 3D`, `screen clip`, `Spotify`, `Thunderbird`, `Visual Studio`, or `Windows Terminal`. When finished say: *"Windows, close [app]"* to close the application.


*"Windows, check [item]."*
--------------------------
Lets the computer check something. Replace [item] by: `Bitcoin rate`, `Christmas`, `CPU`, `date`, `dawn`, `day`, `DNS`, `drives`, `dusk`, `Easter Sunday`, `Earth` (fun), `Ether rate`, `for rain`, `for snow`, `headlines`, `Independence Day`, `internet speed`, `ISS position`, `midnight`, `moon phase`, `month`, `New Year`, `noon`, `operating system`, `ping`, `Santa`, `sunrise`, `sunset`, `swap space`, `tea time`, `temperature`, `Tether rate`, `time`, `time zone`, `up-time`, `VPN`, `weather`, `week`, `wind`, `year`, or `zenith`.


*"Windows, open [name] website."*
---------------------------------
Launches the default Web browser (or opens a new tab) with a website. Replace [name] by: `Amazon`, `Apple`, `Baidu`, `BBC`, `Bing`, `BitBucket`, `CDC`, `CIA`, `CNN`, `Discord`, `DistroWatch`, `Dropbox`, `eBay`, `Facebook`, `FBI`, `Flipboard`, `FourSquare`, `FRITZ!Box`, `FRITZ!Repeater`, `GitHub`, `GliderTracker`, `HolidayCheck`, `HRworks`, `Instagram`, `IPFS`, `Microsoft`, `NASA`, `NBC`, `Netflix`, `Notepad`, `Outdoor Active`, `PayPal`, `Pinterest`, `Pixabay`, `Plex`, `Serenade`, `Slashdot`, `Snap Store`, `Starbucks`, `Tesla`, `TikTok`, `Toggl`, `Topo Map`, `Twitter`,  `UFA`, `Unsplash`, `Walmart`, `WhatsApp`, `White House`, `Windy`, `Wikipedia`, `Wolfram Alpha`, `World News`, `Yahoo`, or `YouTube`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


*"Windows, open Google [service]."*
----------------------------------
Launches the default Web browser (or opens a new tab) with a Google service. Replace [service] by: `Alerts`, `Blogger`, `Books`, `Calendar`, `Charts`, `Contacts`, `Docs`, `Drawings`, `Earth`, `Mail`, `Maps`, `Mars`, `News`, `Notes`, `Photos`, `Play`, `Search`, `Sheets`, `Shopping list`, `Sky`, `Slides`, `Stadia`, `Tasks`, or `Translate`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


*"Windows, open [name] magazine."*
----------------------------------
Launches the default Web browser (or opens a new tab) with a magazine website. Replace [name] by: `Cosmopolitan`, `Focus`, `Golf`, `GQ`, `Health`, `National Geographic`, `People`, `Spiegel`, `SZ`, `Time`, `Vanity Fair`, `Vogue`, or `Wired`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🏦 *"Windows, show [name] city."*
----------------------------------
Launches the default Web browser (or opens a new tab) with Google Maps at the given city. Replace [name] by: `Atlanta`, `Barcelona`, `Berlin`, `Boston`, `Cairo`, `Calgary`, `Cape Town`, `Chicago`, `Dallas`, `Denver`, `Dubai`, `Dublin`, `Frankfurt`, `Hamburg`, `Hong Kong`, `Honolulu`, `Jerusalem`, `Kansas`, `Las Vegas`, `Lisbon`, `London`, `Los Angeles`, `Madrid`, `Mexico`, `Miami`, `Montreal`, `Moscow`, `Munich`, `New York`, `Panama`, `Paris`, `Rome`, `San Francisco`, `Seattle`, `Singapore`, `Sydney`, `Tokyo`, `Toronto`, `Tunis`, `Vienna`, `Washington`, or `Zurich`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🎵 *"Windows, play [genre] music."*
------------------------------------
Launches the default Web browser (or opens a new tab) and plays a music genre. Replace [genre] by: `alternative rock`, `blues`, `chillout`, `classical`, `country`, `dance`, `folk`, `hip hop`, `indie`, `jazz`, `metal`, `pop`,`RnB`, or `rock`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🔈 *"Windows, play [name] sound."*
----------------------------------
Starts the playback of the given sound, just replace [name] by: `bee`, `beep`, `cat`, `cow`, `dog`, `donkey`, `elephant`, `elk`, `frog`, `goat`, `gorilla`, `horse`, `lion`, `parrot`, `pig`, `rattlesnake`, `vulture`, or `wolf`.


🎮 *"Windows, play [name] game."*
----------------------------------
Launches the default Web browser (or opens a new tab) and plays the given game. Replace [name] by: `2048`, `Chess`, `Cube`, `Pacman`, `Tetris`, `TicTacToe`, or `Tower`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


*"Windows, next [category] wallpaper."*
----------------------------------------
Replaces the desktop background by a random photo from Unsplash.com. Replace [category] by: `Animal`, `Beach`, `Car`, `Christmas`, `City`, `Fantasy`, `Military`, `Movie`, `Music`, `Nature`, `Plane`, `Random`, `Space`, `Sports`, or `Winter`.


☝️ *"Windows, remind me [condition]."*
--------------------------------------
Sets a reminder, just replace [condition] by: `at midnight`, `at noon`, `in 5 minutes`, `in 10 minutes`, or `in 15 minutes`.


💽 *"Windows, open [letter] drive."*
-------------------------------------
Launches the File Explorer with a given drive. Replace [letter] by: `C:`, `D:`, `E:`, `F:`, `G:`, or `M:`. When finished say: *"Windows, close file explorer"* to close the File Explorer.


📂 *"Windows, open [name] folder."*
------------------------------------
Launches the File Explorer with a given folder. Replace [name] by: `apps`, `autostart`, `desktop`, `documents`, `downloads`, `Dropbox`, `home`, `music`, `OneDrive`, `pictures`, `recycle bin`, `repos`, `temporary`, or `videos`. When finished say: *"Windows, close file explorer"* to close the File Explorer.


⚙️ *"Windows, open [name] settings."*
--------------------------------------
Launches the Windows settings, replace [name] by: `activation`, `apps`, `background`, `backup`, `bluetooth`, `color`, `date`, `default apps`, `developer`, `display`, `ethernet`, `lockscreen`, `maps`, `printer`, `proxy`, `recovery`, `speech`, `start`, `system` *(the top level settings!)*, `taskbar`, `themes`, `time`, `update`, `USB`, `VPN`, or `Wifi`. When finished say: *"Windows, close system settings"* to close the Windows settings.


📓 *"Windows, show [name] manual."*
------------------------------------
Launches the default Web browser (or opens a new tab) with the given online manual. Replace [name] by: `Ant`, `Apple`, `Audacity`, `Azure`, `Bash`, `Blender`, `Chrome`, `Edge`, `Firefox`, `GCC`, `Git`, `Jenkins`, `MSBuild`, `OBS Studio`, `PowerShell`, `Serenade`, `SystemRescue`, `Toyota`, `Vim`, `Voice` *(yes, this page!)*, `Volkswagen`, or `Windows`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


 📈 *"Windows, show [name] rate."*
-----------------------------------
Launches the default Web browser (or opens a new tab) with the given exchange rate. Replace [name] by: `Bitcoin`, `Cardano`, `Ether`, `Euro`, `NFT collections`, `Solana`, `Tether`, or `US dollar`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


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
* *"Windows, thanks."*


❔ *"Windows, [question]"*
--------------------------
Ask Windows a question, just replace [question] by: `are you here?`, `are you listening?`, `are you there?`, `are you with me?`, `can you talk?`, `do you listen?`, `how are you?`, `how do you do?`, `how old are you?`, `where are you?`, `who is your father?`, or `you can talk?`.


🖖 *"Windows, [farewell]."*
----------------------------
Say good-bye to Windows and replace [farewell] by: `bye`, `bye-bye`, `good-bye`, `I'll be back`, `see you`, or `see you later`.
