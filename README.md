TALK 2 WINDOWS
==============
Be more productive by controlling Windows® with your voice besides keyboard and mouse. Required is Windows 10 or 11, a microphone and loudspeaker, and the Serenade application (freely available for Linux, MacOS, and Windows).


🔧 Installation
---------------
1. Download and install *Serenade* from https://serenade.ai/ (during installation no plugin and no programming language need to be selected). Afterward, close *Serenade*.
2. Download *talk2windows* (click green button) und unzip it somewhere.
3. Open *Windows PowerShell (Administrator)* and execute: `Set-ExecutionPolicy RemoteSigned` to allow execution of PowerShell scripts.
4. Open *Windows PowerShell* and execute: `./export.ps1` in the unzipped *talk2windows* folder. 


Usage
-----
1. Launch *Serenade*.
2. Click into the circle to enable Listening mode. The circle moves when you're speaking into the mic.
3. Speak the voice command **"*Windows, open calculator*"** into the mic, this executes the script `open-calculator.ps1` which launches the calculator application. More supported voice commands are described below.


👋 *"Windows, [greeting]."*
----------------------------
Say hello to Windows, simply replace [greeting] by: `good afternoon`, `good evening`, `good morning`, `good night`, `happy christmas`, `happy easter`, `happy father's day`, `happy halloween`, `happy holidays`, `happy mother's day`, `happy new year`, `happy thanksgiving`, `happy valentine's day`, `hello`, `hey`, `hi`, `howdy`, `merry christmas`, `morning`, `nice to meet you`, `say hello`, or `you alright?`.


 💻 *"Windows, open [app]."*
-----------------------------
Launches an application, just replace [app] by: `3D-Viewer`, `Calculator`,  `Chrome`, `CrystalDiskInfo`, `Discord`, `Edge`, `Firefox`, `Git Extensions`, `Magnifier`, `Microsoft Paint`, `Microsoft Store`, `Netflix`, `Notepad`, `OBS Studio`, `Outlook`, `Paint 3D`, `Screen Clip`, `Spotify`, `Thunderbird`, `Visual Studio`, or `Windows Terminal`. When finished say: *"Windows, close [app]"* to close the application.


🌐 *"Windows, open [name] website."*
-------------------------------------
Launches the default Web browser (or opens a new tab) with a website. Replace [name] by: `Amazon`, `Apple`, `Baidu`, `BBC`, `Bing`, `BitBucket`, `BitBucket status`, `CDC`, `CIA`, `CNN`, `Discord`, `DistroWatch`, `Docker`, `Docker status`, `Dropbox`, `eBay`, `Facebook`, `FBI`, `Flipboard`, `FourSquare`, `FRITZ!Box`, `FRITZ!Repeater`, `GitHub`, `GliderTracker`, `HolidayCheck`, `HRworks`, `Instagram`, `IPFS`, `Microsoft`, `NASA`, `NBC`, `Netflix`, `Notepad`, `Outdoor Active`, `PayPal`, `Pinterest`, `Pixabay`, `Plex`, `Serenade`, `Slashdot`, `Snap Store`, `Starbucks`, `Tesla`, `TikTok`, `Toggl`, `Topo Map`, `Twitter`,  `UFA`, `Unsplash`, `Walmart`, `WhatsApp`, `White House`, `Windy`, `Wikipedia`, `Wolfram Alpha`, `World News`, `Yahoo`, or `YouTube`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


📋 *"Windows, open Google [service]."*
--------------------------------------
Launches the default Web browser (or opens a new tab) with a Google service. Replace [service] by: `Alerts`, `Blogger`, `Books`, `Calendar`, `Charts`, `Contacts`, `Docs`, `Drawings`, `Earth`, `Mail`, `Maps`, `Mars`, `News`, `Notes`, `Photos`, `Play`, `Search`, `Sheets`, `Shopping list`, `Sky`, `Slides`, `Stadia`, `Tasks`, or `Translate`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


📖 *"Windows, open [name] magazine."*
--------------------------------------
Launches the default Web browser (or opens a new tab) with a magazine website. Replace [name] by: `Cosmopolitan`, `Focus`, `Golf`, `GQ`, `Health`, `National Geographic`, `People`, `Spiegel`, `SZ`, `Time`, `Vanity Fair`, `Vogue`, or `Wired`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


📓 *"Windows, open [name] manual."*
------------------------------------
Launches the default Web browser (or opens a new tab) with the given manual. Replace [name] by: `Ant`, `Apple`, `Audacity`, `Azure`, `Bash`, `Blender`, `Chrome`, `Edge`, `Firefox`, `GCC`, `Git`, `Jenkins`, `MSBuild`, `OBS Studio`, `PowerShell`, `Serenade`, `SystemRescue`, `Toyota`, `Vim`, `Voice` *(yes, this page!)*, `Volkswagen`, or `Windows`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🏦 *"Windows, show [name] city."*
----------------------------------
Launches the default Web browser (or opens a new tab) with Google Maps at the given city. Replace [name] by: `Atlanta`, `Barcelona`, `Berlin`, `Boston`, `Cairo`, `Calgary`, `Cape Town`, `Chicago`, `Dallas`, `Denver`, `Dubai`, `Dublin`, `Frankfurt`, `Hamburg`, `Hong Kong`, `Honolulu`, `Jerusalem`, `Kansas`, `Las Vegas`, `Lisbon`, `London`, `Los Angeles`, `Madrid`, `Mexico`, `Miami`, `Montreal`, `Moscow`, `Munich`, `New York`, `Panama`, `Paris`, `Rome`, `San Francisco`, `Seattle`, `Singapore`, `Sydney`, `Tokyo`, `Toronto`, `Tunis`, `Vienna`, `Washington`, or `Zurich`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


 📈 *"Windows, show [name] rate."*
-----------------------------------
Launches the default Web browser (or opens a new tab) with the given exchange rate. Replace [name] by: `Bitcoin`, `Cardano`, `Ether`, `Euro`, `NFT collections`, `Solana`, `Tether`, or `US dollar`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🎵 *"Windows, play [genre] music."*
------------------------------------
Launches the default Web browser (or opens a new tab) and plays a music genre. Replace [genre] by: `Alternative Rock`, `Blues`, `Chillout`, `Christmas`, `Classical`, `Country`, `Dance`, `Folk`, `Hip Hop`, `Indie`, `Jazz`, `Metal`, `Pop`,`Reggae`, `Relax`, `RnB`, `Rock`, or `Workout`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🔈 *"Windows, play [name] sound."*
----------------------------------
Starts the playback of the given sound, just replace [name] by: `bee`, `beep`, `cat`, `cow`, `dog`, `donkey`, `elephant`, `elk`, `frog`, `goat`, `gorilla`, `horse`, `lion`, `parrot`, `pig`, `rattlesnake`, `vulture`, or `wolf`.


🎮 *"Windows, play [name] game."*
----------------------------------
Launches the default Web browser (or opens a new tab) and lets you play a game. Replace [name] by: `2048`, `Chess`, `Cube`, `Pacman`, `Santa Tracker`, `Tetris`, `TicTacToe`, or `Tower`. When finished say: *"Windows, close [name] browser"* to close the Web browser.


🔦 *"Windows, check [item]."*
------------------------------
Lets the computer check something. Replace [item] by: `Bitcoin rate`, `Christmas`, `CPU`, `date`, `dawn`, `day`, `DNS`, `drives`, `dusk`, `Easter Sunday`, `Earth` (fun), `Ether rate`, `for Firefox`, `for rain`, `for snow`, `headlines`, `Independence Day`, `internet speed`, `ISS position`, `midnight`, `moon phase`, `month`, `New Year`, `noon`, `operating system`, `ping`, `Santa`, `sunrise`, `sunset`, `swap space`, `tea time`, `temperature`, `Tether rate`, `time`, `time zone`, `up-time`, `VPN`, `weather`, `week`, `wind`, `year`, or `zenith`.


🎨 *"Windows, next [category] wallpaper."*
-------------------------------------------
Replaces the desktop background by a random photo from Unsplash.com. Replace [category] by: `Animal`, `Beach`, `Car`, `Christmas`, `City`, `Fantasy`, `Military`, `Movie`, `Music`, `Nature`, `Plane`, `Random`, `Space`, `Sports`, or `Winter`.


⏰ *"Windows, remind me [time]."*
----------------------------------
Sets a reminder, just replace [time] by: `at midnight`, `at noon`, `at sunrise`, `at sunset`, `at tea time`, `in 5 minutes`, `in 10 minutes`, `in 15 minutes`, or `in 30 minutes`.


💽 *"Windows, open [letter] drive."*
-------------------------------------
Launches the File Explorer with a given drive. Replace [letter] by: `C:`, `D:`, `E:`, `F:`, `G:`, `H:` or `M:`. When finished say: *"Windows, close file explorer"* to close the File Explorer.


📂 *"Windows, open [name] folder."*
------------------------------------
Launches the File Explorer with a given folder. Replace [name] by: `apps`, `autostart`, `desktop`, `documents`, `downloads`, `Dropbox`, `home`, `music`, `OneDrive`, `pictures`, `recycle bin`, `repos`, `Talk2Windows`, `temporary`, or `videos`. When finished say: *"Windows, close file explorer"* to close the File Explorer.


🔧 *"Windows, install [app]."*
------------------------------
Installs an application from Microsoft Store, replace [app] by: `9 ZIP`, `CrystalDiskInfo`, `Edge`, `Discord`, `Firefox`, `IrfanView`, `Netflix`, `Opera Browser`, `Opera GX`, `One Calendar`, `Paint 3D`, `Spotify`, `Skype`, `TikTok`, `Twitter`, `Visual Studio Code`, `VLC`, or `Windows Terminal`. Note that Microsoft Store can automatically install app updates, so they will always be up-to-date.


⚙️ *"Windows, open [name] settings."*
--------------------------------------
Launches the Windows settings, replace [name] by: `activation`, `apps`, `background`, `backup`, `bluetooth`, `color`, `date`, `default apps`, `developer`, `display`, `ethernet`, `lockscreen`, `maps`, `printer`, `proxy`, `recovery`, `speech`, `start`, `system` *(the top level settings!)*, `taskbar`, `themes`, `time`, `update`, `USB`, `VPN`, or `Wifi`. When finished say: *"Windows, close system settings"* to close the Windows settings.


❔ *"Windows, [hotkey]"*
-----------------------
Presses a hotkey, replace [hotkey] by: `close tab`, `open tab`, `page down`, `page up`, `tab 1`, `tab 2`, `tab 3`, `tab 4`, `tab 5`, or `tab 6`.


❔ *"Windows, [question]"*
--------------------------
Asks Windows a question, just replace [question] by: `are you a computer?`, `are you here?`, `are you listening?`, `are you there?`, `are you with me?`, `can you talk?`, `do you listen?`, `how are you?`, `how do you do?`, `how old are you?`, `where am I?`, `where are you?`, `who is your father?`, or `you can talk?`.


💭 *"Windows, [command]"*
-------------------------
Lets Windows execute a command, replace [command] by: `clear recycle bin`, `come on`, `connect VPN`, `give me five`, `I need help`, `locate my phone`, `lock desktop`, `lock screen`, `repeat last reply`, `roll a dice`, `shut up`, `sound check`, `sorry`, `tell me a joke`, `tell me a quote`, `thank you`, `thanks`, `turn volume off`, `turn volume on`, `turn volume up`, or `turn volume down`.


🖖 *"Windows, [farewell]."*
----------------------------
Say good-bye to Windows and replace [farewell] by: `bye`, `bye-bye`, `good-bye`, `I'll be back`, `see you`, or `see you later`.


® Trademarks
------------
All trademarks are the property of their respective owners.
