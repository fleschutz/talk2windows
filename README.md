TALK2WINDOWS
============
This repo adds recognition of voice commands to control the Windows® desktop. Using your voice besides keyboard and mouse increases your productivity and is really awesome. 

🔧 Installation
----------------
Required is Windows 10 or 11, a headset (or microphone and loudspeaker), and the free Serenade application.

1. Download the free *Serenade* application from https://serenade.ai and install it (choose *no plugin* and *no programming language* during installation). Close the application when finished.
2. Download the *talk2windows* .ZIP file from [https://github.com/fleschutz/talk2windows/archive/main.zip]( https://github.com/fleschutz/talk2windows/archive/main.zip) and unzip it.
3. Open *Windows PowerShell (Administrator)* and execute: `Set-ExecutionPolicy RemoteSigned` to allow the execution of PowerShell scripts.
4. Open *Windows PowerShell* and execute the script: `./export.ps1` in the unzipped *talk2windows* folder. This exports the voice commands with default wake word 'Windows' to Serenade.

Usage
-----
1. Launch the *Serenade* app and click the slider to switch from *Paused* to *Listening* mode.
2. Raise the microphone audio level in case a *'low voice'* is shown.
3. Speak the voice command **"*Windows, open calculator*"** into the mic (this executes the script `open-calculator.ps1` which launches the calculator app)
 
The following voice commands are currently supported:

👋 *"Windows, [greeting]"*
---------------------------
Say hello to Windows, simply replace [greeting] by: `good afternoon`, `good evening`, `good morning`, `good night`, `happy christmas`, `happy easter`, `happy father's day`, `happy halloween`, `happy holidays`, `happy mother's day`, `happy new year`, `happy thanksgiving`, `happy valentine's day`, `hello`, `hey`, `hi`, `howdy`, `merry christmas`, `morning`, `nice to meet you`, `say hello`, or `you alright?`.

 💻 *"Windows, open [app]"*
----------------------------
Launches an application, just replace [app] by: `3D-Viewer`, `9 ZIP`, `Calculator`,  `Character Map`, `Chrome`, `CrystalDiskInfo`, `CrystalDiskMark`, `Discord`, `Edge`, `Firefox`, `Git Extensions`, `Magnifier`, `Microsoft Paint`, `Microsoft Store`, `Mp3tag`, `Netflix`, `Notepad`, `OBS Studio`, `One Calendar`, `One Note`, `Outlook`, `Paint 3D`, `Remote Desktop`, `Screen Clip`, `Spotify`, `System Information`, `Thunderbird`, `Visual Studio`, `VLC`, or `Windows Terminal`. To close the application simply say: **"Windows, close [app]"**.

🔧 *"Windows, install [app]"*
-----------------------------
Installs an application from Microsoft Store, replace [app] by: `9 ZIP`, `CrystalDiskInfo`, `CrystalDiskMark`, `Edge`, `Discord`, `Firefox`, `IrfanView`, `Mp3tag`, `Netflix`, `Opera Browser`, `Opera GX`, `One Calendar`, `Paint 3D`, `Rufus`, `Spotify`, `Skype`, `TikTok`, `Twitter`, `Visual Studio Code`, `VLC`, or `Windows Terminal`. To uninstall the application simply say: **"Windows, uninstall [app]"**.

🌐 *"Windows, open [name] website"*
------------------------------------
Launches the default Web browser (or opens a new tab) with the given website. Replace [name] by: `Amazon`, `Apple`, `Baidu`, `BBC`, `Bing`, `BitBucket`, `BitBucket status`, `CDC`, `CIA`, `CNN`, `Discord`, `DistroWatch`, `Docker`, `Docker status`, `Dropbox`, `eBay`, `Facebook`, `FBI`, `FlightRadar`, `Flipboard`, `FourSquare`, `FRITZ!Box`, `FRITZ!Repeater`, `GitHub`, `GliderTracker`, `HolidayCheck`, `HRworks`, `Instagram`, `IPFS`, `Microsoft`, `NASA`, `NBC`, `Netflix`, `Notepad`, `Outdoor Active`, `PayPal`, `Pinterest`, `Pixabay`, `Plex`, `Serenade`, `Slashdot`, `Snap Store`, `Space Weather`, `SpaceX`, `Spotify`, `Starbucks`, `Tesla`, `TikTok`, `Toggl`, `Topo Map`, `Twitter`,  `UFA`, `Unsplash`, `Walmart`, `WhatsApp`, `White House`, `Windy`, `Wikipedia`, `Wolfram Alpha`, `World News`, `Yahoo`, `YouTube`, or `Zoom`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

❔ *"Windows, [shortcut]"*
-------------------------
Presses a keyboard shortcut to navigate in a browser window. Replace [shortcut] by: `close tab`, `last tab`, `next page`, `next tab`, `previous page`, `previous tab`, `open new tab`, `open new window`, `reload page`, `scroll down`, `scroll to bottom`, `scroll to top`, `scroll up`, `tab 1`, `tab 2`, `tab 3`, `tab 4`, `tab 5`, `tab 6`, `zoom in`, or `zoom out`.

📝 *"Windows, insert [character]"*
---------------------------------
Inserts a character (or text) at the current text cursor position. Replace [character] by: `at sign`, `backslash`, `bomb`, `bye bye`, `call?`, `checkmark`, `clapping`, `copyright sign`, `date`, `Dollar sign`, `Euro sign`, `good-bye`, `good morning`, `hashtag`, `heart`, `OK`, `Pound sign`, `shrugging`, `smiley`, `thumbs up`, `trademark sign`, or `Yen sign`.

📋 *"Windows, open Google [service]"*
-------------------------------------
Launches the default Web browser (or opens a new tab) with a Google® service. Replace [service] by: `Alerts`, `Blogger`, `Books`, `Calendar`, `Charts`, `Contacts`, `Docs`, `Drawings`, `Earth`, `Mail`, `Maps`, `Mars`, `News`, `Notes`, `Photos`, `Play`, `Search`, `Sheets`, `Shopping list`, `Sky`, `Slides`, `Stadia`, `Tasks`, or `Translate`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

📖 *"Windows, open [name] magazine"*
-------------------------------------
Launches the default Web browser (or opens a new tab) with a magazine website. Replace [name] by: `Cosmopolitan`, `Focus`, `Golf`, `GQ`, `Health`, `National Geographic`, `People`, `RollingStone`, `Scientific American`, `Spiegel`, `Sports Illustrated`, `SZ`, `The Oprah`, `Time`, `Vanity Fair`, `Vogue`, or `Wired`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

📓 *"Windows, open [name] manual"*
-----------------------------------
Launches the default Web browser (or opens a new tab) with the given manual. Replace [name] by: `Ant`, `Apple`, `Audacity`, `Azure`, `Bash`, `Blender`, `Chrome`, `Edge`, `Firefox`, `GCC`, `Git`, `Jenkins`, `MSBuild`, `OBS Studio`, `PowerShell`, `Serenade`, `SystemRescue`, `Toyota`, `Vim`, `Voice` *(yes, this page!)*, `Volkswagen`, or `Windows`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

🏦 *"Windows, show [name] city"*
---------------------------------
Launches the default Web browser (or opens a new tab) with Google Maps at the given city. Replace [name] by: `Amsterdam`, `Atlanta`, `Barcelona`, `Berlin`, `Boston`, `Cairo`, `Calgary`, `Cape Town`, `Chicago`, `Dallas`, `Denver`, `Dubai`, `Dublin`, `Frankfurt`, `Hamburg`, `Hong Kong`, `Honolulu`, `Jerusalem`, `Kansas`, `Las Vegas`, `Lisbon`, `London`, `Los Angeles`, `Madrid`, `Mexico`, `Miami`, `Montreal`, `Moscow`, `Munich`, `New York`, `Panama`, `Paris`, `Rome`, `San Francisco`, `Seattle`, `Singapore`, `Sydney`, `Tokyo`, `Toronto`, `Tunis`, `Vienna`, `Washington`, or `Zurich`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

 📈 *"Windows, show [name] rate"*
----------------------------------
Launches the default Web browser (or opens a new tab) with the given exchange rate. Replace [name] by: `Bitcoin`, `Cardano`, `Ether`, `Euro`, `NFT collections`, `Solana`, `Tether`, or `US dollar`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

🎵 *"Windows, play [genre] music"*
-----------------------------------
Launches the default Web browser (or opens a new tab) and plays a music genre. Replace [genre] by: `70s`, `80s`, `90s`, `Alternative Rock`, `Blues`, `Chillout`, `Christmas`, `Classical`, `Country`, `Dance`, `Folk`, `Hip Hop`, `House`, `Indie`, `Jazz`, `Metal`, `Pop`,`Reggae`, `Relax`, `RnB`, `Rock`, or `Workout`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

🔈 *"Windows, play [name] sound"*
---------------------------------
Starts the playback of the given sound, just replace [name] by: `alarm`, `bee`, `beep`, `Big Ben`, `car`, `cat`, `cow`, `dog`, `donkey`, `elephant`, `elk`, `frog`, `goat`, `gorilla`, `horse`, `lion`, `parrot`, `pig`, `rattlesnake`, `vulture`, or `wolf`.

🎮 *"Windows, play [name] game"*
---------------------------------
Launches the default Web browser (or opens a new tab) and lets you play a free browser game. Replace [name] by: `2048`, `Agar`, `Catan Universe`, `Chess`, `Cube`, `ISS Docking Simulator`, `Pacman`, `Santa Tracker`, `Slither`, `Tetris`, `TicTacToe`, `Tower`, `Vanis`, `War Brokers`, or `Wordle`. When finished say: *"Windows, close [name] browser"* to close the Web browser.

🔦 *"Windows, check [item]"*
-----------------------------
Lets the computer check something. Replace [item] by: `Bitcoin rate`, `CPU temperature`, `dawn`, `day`, `DNS`, `downloads`, `drives`, `dusk`, `Earth` (fun), `Ether rate`, `for rain`, `for snow`, `Git version`, `headlines`, `Independence Day`, `internet connection`, `internet speed`, `moon phase`, `month`, `New Year`, `operating system`, `Outlook`, `ping`, `recycle bin`, `Santa`, `swap space`, `temperature`, `Tether rate`, `time zone`, `up-time`, `VPN`, `weather`, `week`, `wind`, `year`, or `zenith`.

🎨 *"Windows, next [category] wallpaper"*
------------------------------------------
Replaces the desktop background by a random photo from Unsplash.com. Replace [category] by: `Animal`, `Beach`, `Car`, `Christmas`, `City`, `Desert`, `Fantasy`, `Military`, `Movie`, `Music`, `Nature`, `Plane`, `Random`, `Space`, `Sports`, or `Winter`.

⏰ *"Windows, remind me [time]"*
---------------------------------
Sets a reminder, just replace [time] by: `at 1 AM/PM`, `at 2 AM/PM`, `at 3 AM/PM`, `at 4 AM/PM`, `at 5 AM/PM`, `at 6 AM/PM`, `at 7 AM/PM`, `at 8 AM/PM`, `at 9 AM/PM`, `at 10 AM/PM`, `at 11 AM/PM`, `at midnight`, `at noon`, `at sunrise`, `at sunset`, `at tea time`, `in 5 minutes`, `in 10 minutes`, `in 15 minutes`, or `in 30 minutes`.

💽 *"Windows, open [letter] drive"*
------------------------------------
Launches the File Explorer with the given drive. Replace [letter] by: `C:`, `D:`, `E:`, `F:`, `G:`, `H:` or `M:`. When finished say: *"Windows, close file explorer"* to close the File Explorer.


📂 *"Windows, open [name] folder"*
-----------------------------------
Launches the File Explorer with the given folder. Replace [name] by: `Abbreviations`, `Apps`, `Autostart`, `Desktop`, `Documents`, `Downloads`, `Dropbox`, `Home`, `Music`, `OneDrive`, `Pictures`, `Recycle bin`, `Repos`, `SSH`, `Talk2Windows`, `Temporary`, `Videos`, or 'Windows'. When finished say: *"Windows, close file explorer"* to close the File Explorer.

⚙️ *"Windows, open [name] settings"*
-------------------------------------
Launches the Windows settings, replace [name] by: `activation`, `apps`, `background`, `backup`, `bluetooth`, `color`, `date`, `default apps`, `developer`, `display`, `ethernet`, `lockscreen`, `maps`, `printer`, `proxy`, `recovery`, `speech`, `start`, `system` *(the top level settings!)*, `taskbar`, `themes`, `time`, `update`, `USB`, `VPN`, or `Wifi`. When finished say: *"Windows, close system settings"* to close the Windows settings.

❔ *"Windows, list [table]"*
---------------------------
Shows the given table, just replace [table] by: `bluetooth devices`, `city weather`, `earthquakes`, `emojis`, `environment variables`, `headlines`, `installed apps`, `installed software`, `installed voices`, `network adapters`, `printers`, `running processes`, `services`, `system info`, `tasks`, `time zones`, or `user groups`.

🔧 *"Windows, [action] computer"*
---------------------------------
Performs the given action to the computer, replace [action] by: `hibernate`, `lock`, `reboot`, `shut down`, or `suspend`.

❔ *"Windows, [question]"*
--------------------------
Asks Windows a question, just replace [question] by: `are you a computer?`, `are you here?`, `are you listening?`, `are you ready?`, `are you there?`, `are you with me?`, `can you talk?`, `do you listen?`, `how are you?`, `how do you do?`, `how much daylight today?`, `how old are you?`, `what about ...?`, `what is [abbreviation]`, `what's the date today?`, `what's the time?`, `what time is it?`, `when is Christmas?`, `when is easter?`, `when is midnight?`, `when is noon?`, `when is President's day?`, `when is sunrise?`, `when is sunset?`, `when is tea time?`, `where am I?`, `where are you?`, `where is the ISS`, `who is your father?`, or `you can talk?`.

💭 *"Windows, [command]"*
-------------------------
Lets Windows execute a command, replace [command] by: `calculate [expression]`, `connect VPN`, `count down from [number]`, `empty recycle bin`, `enable god mode`, `I need help`, `locate my phone`, `minimize all windows`, `ping [host]`, `repeat last reply`, `roll a dice`, `save screenshot`, `set volume to [number] percent`, `shut up`, `sound check`, `sorry`, `spell [text]`, `tell me a joke`, `tell me a quote`, `thank you`, `thanks`, `translate [text] to [language]`, `turn volume off`, `turn volume on`, `turn volume up`, `turn volume fully up`, `turn volume down`, `update repository`, or `wakeup [hostname]`.

🖖 *"Windows, [farewell]"*
---------------------------
Say good-bye to Windows and replace [farewell] by: `bye`, `bye-bye`, `good-bye`, `I'll be back`, `see you`, or `see you later`.

📧 Feedback
------------
Send your email feedback to: markus.fleschutz [at] gmail.com

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0 license. All trademarks are the property of their respective owners.
