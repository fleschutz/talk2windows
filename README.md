TALK2WINDOWS
============
This repo installs support for voice commands to control your *Windows*® desktop by voice. Using keyboard, mouse, and voice increases your productivity and is really awesome. 

Required is *Windows* 10 or 11, a headset, and the free *Serenade* voice recognition application.

🔧 Installation (just once)
----------------------------
1. **Download the free *Serenade* app** from [https://serenade.ai](https://serenade.ai/download) and install it. Choose *no plugin* and *no programming language* during installation and close the application when finished.
2. **Download this repo** from [https://github.com/fleschutz/talk2windows](https://github.com/fleschutz/talk2windows/archive/main.zip) and unzip it.
3. **Open *Windows PowerShell (Administrator)* and execute:** `Set-ExecutionPolicy RemoteSigned` to allow the execution of PowerShell scripts.
4. **Open *Windows PowerShell* and execute:** `./install.ps1` in the unzipped *talk2windows* folder. It exports the voice commands to *Serenade*.

Usage
-----
1. Put your headset on and check that it's working.
2. Launch *Serenade* and click the slider to switch from *Paused* to *Listening* mode. 
3. Say a voice command like **"*Windows, open calculator*"** with a calm voice into the mic.

This executes the PowerShell script `scripts/open-calculator.ps1` which launches the calculator app. Raise the mic audio level in case a *'low voice'* is shown. Most voice commands follow the simple scheme: *&lt;wake word&gt; &lt;verb&gt; &lt;subject&gt;*.

The following voice commands are supported: (if wake word "Windows" is used)

👋 *"Windows, &lt;greeting&gt;"*
---------------------------
Say hello to your computer, just replace &lt;greeting&gt; with: `good afternoon`, `good evening`, `good morning`, `good night`, `happy christmas`, `happy easter`, `happy father's day`, `happy halloween`, `happy holidays`, `happy mother's day`, `happy new year`, `happy thanksgiving`, `happy valentine's day`, `hello`, `hey`, `hi`, `howdy`, `merry christmas`, `morning`, or `nice to meet you`.

🔧 *"Windows, install &lt;app&gt;"*
-----------------------------
Installs a Microsoft Store application, replace &lt;app&gt; with: `7-Zip`, `CrystalDiskInfo`, `CrystalDiskMark`, `Discord`, `Disney+`, `Edge`, `Firefox`, `IrfanView`, `Mp3tag`, `Netflix`, `Opera Browser`, `Opera GX`, `One Calendar`, `Rufus`, `Spotify`, `TikTok`, `Twitter`, `Visual Studio Code`, `VLC`, `Windows Terminal`, or `WhatsApp`. To uninstall it simply say: **"Windows, uninstall &lt;app&gt;"**.

 💻 *"Windows, open &lt;app&gt;"*
----------------------------
Launches an installed application, replace &lt;app&gt; with: `3D-Viewer`, `7-Zip`, `Calculator`,  `Character Map`, `Chrome`, `CrystalDiskInfo`, `CrystalDiskMark`, `Discord`, `Disney+`, `Edge`, `Firefox`, `Git Extensions`, `Magnifier`, `Microsoft Paint`, `Microsoft Store`, `Mp3tag`, `Netflix`, `Notepad`, `OBS Studio`, `One Calendar`, `One Note`, `Outlook`, `Remote Desktop`, `Screen Clip`, `Spotify`, `System Information`, `Thunderbird`, `Visual Studio`, `VLC`, `voice recorder`, `Windows Terminal`, or `WhatsApp`. To close it simply say: **"Windows, close &lt;app&gt;"**.

🌐 *"Windows, open &lt;name&gt; website"*
------------------------------------
Launches the default Web browser (or a new tab) with the given website. Replace &lt;name&gt; with: `Amazon`, `Apple`, `Baidu`, `BBC`, `Bing`, `BitBucket`, `BitBucket status`, `CDC`, `CIA`, `CNN`, `Discord`, `DistroWatch`, `Docker`, `Docker status`, `Dropbox`, `eBay`, `Facebook`, `FBI`, `FlightRadar`, `Flipboard`, `FourSquare`, `FRITZ!Box`, `FRITZ!Repeater`, `GitHub`, `GliderTracker`, `HolidayCheck`, `HRworks`, `Instagram`, `IPFS`, `Microsoft`, `NASA`, `NBC`, `Netflix`, `Notepad`, `Outdoor Active`, `PayPal`, `Pinterest`, `Pixabay`, `Plex`, `Serenade`, `Slashdot`, `Snap Store`, `Space Weather`, `SpaceX`, `Spotify`, `Starbucks`, `Tesla`, `TikTok`, `Toggl`, `Topo Map`, `Twitter`,  `UFA`, `Unsplash`, `Walmart`, `WhatsApp`, `White House`, `Windy`, `Wikipedia`, `Wolfram Alpha`, `World News`, `Yahoo`, `YouTube`, or `Zoom`. When finished say: **"Windows, close tab"**.

🔦 *"Windows, check &lt;item&gt;"*
-----------------------------
Let the computer check something for you - replace &lt;item&gt; with: `audio`, `Bitcoin rate`, `CPU temperature`, `dawn`, `day`, `DNS`, `downloads`, `drives`, `dusk`, `Earth` (fun), `Ether rate`, `for rain`, `for snow`, `Git version`, `headlines`, `Independence Day`, `internet connection`, `internet speed`, `moon phase`, `month`, `New Year`, `operating system`, `Outlook`, `ping`, `recycle bin`, `Santa`, `swap space`, `temperature`, `Tether rate`, `time zone`, `up-time`, `VPN`, `weather`, `week`, `the wind`, `year`, or `zenith`.

❔ *"Windows, &lt;shortcut&gt;"*
-------------------------
Presses a keyboard shortcut to navigate in a browser window. Replace &lt;shortcut&gt; with: `close tab`, `last tab`, `next page`, `next tab`, `previous page`, `previous tab`, `open new tab`, `open new window`, `reload page`, `scroll down`, `scroll to bottom`, `scroll to top`, `scroll up`, `tab 1`, `tab 2`, `tab 3`, `tab 4`, `tab 5`, `tab 6`, `zoom in`, or `zoom out`.

📝 *"Windows, insert &lt;char&gt; sign"*
---------------------------------------
Inserts the given character at the current text cursor position. Replace &lt;char&gt; with: `at`, `backslash`, `comma`, `copyright`, `Dollar`, `Euro`, `hashtag`, `minus`, `number`, `percent`, `pipe`, `plus`, `Pound`, `slash`, `trademark`, `underscore`, or `Yen`.

📝 *"Windows, insert &lt;text&gt;"*
---------------------------------
Inserts text at the current text cursor position. Replace &lt;text&gt; with: `bomb`, `bye bye`, `call?`, `checkmark`, `clapping`, `date`, `good-bye`, `good morning`, `heart`, `OK`, `shrugging`, `smiley`, or `thumbs up`.

📋 *"Windows, open Google &lt;service&gt;"*
-------------------------------------
Launches the default Web browser (or a new tab) showing the given Google® service. Replace &lt;service&gt; with: `Alerts`, `Blogger`, `Books`, `Calendar`, `Charts`, `Contacts`, `Docs`, `Drawings`, `Earth`, `Mail`, `Maps`, `Mars`, `News`, `Notes`, `Photos`, `Play`, `Search`, `Sheets`, `Shopping list`, `Sky`, `Slides`, `Stadia`, `Tasks`, or `Translate`. When finished say: **"Windows, close tab"**.

📖 *"Windows, open &lt;name&gt; magazine"*
-------------------------------------
Launches the default Web browser (or a new tab) showing the given magazine website. Replace &lt;name&gt; with: `Cosmopolitan`, `Focus`, `Golf`, `GQ`, `Health`, `National Geographic`, `People`, `RollingStone`, `Scientific American`, `Spiegel`, `Sports Illustrated`, `SZ`, `The Oprah`, `Time`, `Vanity Fair`, `Vogue`, or `Wired`. When finished say: **"Windows, close tab"**.

📓 *"Windows, open &lt;name&gt; manual"*
-----------------------------------
Launches the default Web browser (or a new tab) with the given manual. Replace &lt;name&gt; with: `Ant`, `Apple`, `Audacity`, `Azure`, `Bash`, `Blender`, `Chrome`, `Edge`, `Firefox`, `GCC`, `Git`, `Jenkins`, `MSBuild`, `OBS Studio`, `PowerShell`, `Serenade`, `SystemRescue`, `Toyota`, `Vim`, `Voice` *(yes, this page!)*, `Volkswagen`, or `Windows`. When finished say: **"Windows, close tab"**.

🏦 *"Windows, show &lt;name&gt; city"*
---------------------------------
Launches the default Web browser (or a new tab) showing the given city in *Google Maps*. Replace &lt;name&gt; with: `Amsterdam`, `Atlanta`, `Barcelona`, `Berlin`, `Boston`, `Cairo`, `Calgary`, `Cape Town`, `Chicago`, `Dallas`, `Denver`, `Dubai`, `Dublin`, `Frankfurt`, `Hamburg`, `Hong Kong`, `Honolulu`, `Jerusalem`, `Kansas`, `Las Vegas`, `Lisbon`, `London`, `Los Angeles`, `Madrid`, `Mexico`, `Miami`, `Montreal`, `Moscow`, `Munich`, `New York`, `Panama`, `Paris`, `Rome`, `San Francisco`, `Seattle`, `Singapore`, `Sydney`, `Tokyo`, `Toronto`, `Tunis`, `Vienna`, `Washington`, or `Zurich`. When finished say: **"Windows, close tab"**.

 📈 *"Windows, show &lt;name&gt; rate"*
----------------------------------
Launches the default Web browser (or a new tab) showing the given exchange rate. Replace &lt;name&gt; with: `Bitcoin`, `Cardano`, `Ether`, `Euro`, `NFT collections`, `Solana`, `Tether`, or `US dollar`. When finished say: **"Windows, close tab"**.

🎵 *"Windows, play &lt;genre&gt; music"*
-----------------------------------
Launches the default Web browser (or a new tab) and plays a music genre. Replace &lt;genre&gt; with: `70s`, `80s`, `90s`, `Alternative Rock`, `Blues`, `Chillout`, `Christmas`, `Classical`, `Country`, `Dance`, `Folk`, `Hip Hop`, `House`, `Indie`, `Jazz`, `Metal`, `Pop`,`Reggae`, `Relax`, `RnB`, `Rock`, or `Workout`. When finished say: **"Windows, close tab"**.

🔈 *"Windows, play &lt;name&gt; sound"*
---------------------------------
Starts the playback of the given sound, just replace &lt;name&gt; with: `alarm`, `bee`, `beep`, `Big Ben`, `car`, `cat`, `cow`, `dog`, `donkey`, `elephant`, `elk`, `frog`, `goat`, `gorilla`, `horse`, `lion`, `parrot`, `pig`, `rattlesnake`, `vulture`, or `wolf`.

🎮 *"Windows, let's play &lt;game&gt;"*
---------------------------------
Launches the default Web browser (or a new tab) and lets you play a free browser game. Replace &lt;game&gt; with: `2048`, `Agar`, `Catan Universe`, `Chess`, `Cube`, `ISS Docking Simulator`, `Pacman`, `Santa Tracker`, `Slither`, `Tetris`, `TicTacToe`, `Tower`, `Vanis`, `War Brokers`, or `Wordle`. When finished say: **"Windows, close tab"**.

🎨 *"Windows, next &lt;category&gt; wallpaper"*
------------------------------------------
Replaces the desktop background by a random photo from Unsplash.com. Replace &lt;category&gt; with: `Animal`, `Beach`, `Car`, `Christmas`, `City`, `Desert`, `Fantasy`, `Military`, `Movie`, `Music`, `Nature`, `Plane`, `Random`, `Space`, `Sports`, or `Winter`.

⏰ *"Windows, remind me &lt;time&gt;"*
---------------------------------
Sets a reminder, just replace &lt;time&gt; with: `at 1 AM/PM`, `at 2 AM/PM`, `at 3 AM/PM`, `at 4 AM/PM`, `at 5 AM/PM`, `at 6 AM/PM`, `at 7 AM/PM`, `at 8 AM/PM`, `at 9 AM/PM`, `at 10 AM/PM`, `at 11 AM/PM`, `at midnight`, `at noon`, `at sunrise`, `at sunset`, `at tea time`, `in 5 minutes`, `in 10 minutes`, `in 15 minutes`, or `in 30 minutes`.

💽 *"Windows, open &lt;letter&gt; drive"*
------------------------------------
Launches the *File Explorer* showing the given drive. Replace &lt;letter&gt; with: `C:`, `D:`, `E:`, `F:`, `G:`, `H:` or `M:`. When finished say: **"Windows, close file explorer"**.

📂 *"Windows, open &lt;name&gt; folder"*
-----------------------------------
Launches the File Explorer with the given folder. Replace &lt;name&gt; with: `apps`, `applications`, `autostart`, `crash dumps`, `desktop`, `documents`, `downloads`, `Dropbox`, `home`, `music`, `OneDrive`, `pictures`, `recycle bin`, `repos`, `SSH`, `Talk2Windows`, `temporary`, `videos`, or `Windows`. When finished say: **"Windows, close file explorer"**.

⚙️ *"Windows, open &lt;name&gt; settings"*
-------------------------------------
Launches the Windows settings, replace &lt;name&gt; with: `activation`, `apps`, `background`, `backup`, `bluetooth`, `color`, `date`, `default apps`, `developer`, `display`, `ethernet`, `lockscreen`, `maps`, `printer`, `proxy`, `recovery`, `speech`, `start`, `system` *(the top level settings!)*, `taskbar`, `themes`, `time`, `update`, `USB`, `VPN`, or `Wifi`. When finished say: **"Windows, close system settings"**.

❔ *"Windows, list &lt;table&gt;"*
---------------------------
Shows the given table, just replace &lt;table&gt; with: `bluetooth devices`, `city weather`, `earthquakes`, `emojis`, `environment variables`, `headlines`, `installed apps`, `installed software`, `installed voices`, `network adapters`, `printers`, `running processes`, `services`, `system info`, `tasks`, `time zones`, or `user groups`.

🔧 *"Windows, &lt;action&gt; computer"*
---------------------------------
Performs the given action to the computer, replace &lt;action&gt; with: `hibernate`, `lock`, `reboot`, `shut down`, or `suspend`.

❔ *"Windows, &lt;question&gt;"*
--------------------------
Asks Windows a question, just replace &lt;question&gt; with: `are you a computer?`, `are you here?`, `are you listening?`, `are you ready?`, `are you there?`, `are you with me?`, `can you talk?`, `do you listen?`, `how are you?`, `how do you do?`, `how much daylight today?`, `how old are you?`, `what about ...?`, `what is [abbreviation]`, `what's the date today?`, `what's the time?`, `what time is it?`, `when is Christmas?`, `when is easter?`, `when is midnight?`, `when is noon?`, `when is President's day?`, `when is sunrise?`, `when is sunset?`, `when is tea time?`, `where am I?`, `where are you?`, `where is the ISS`, `who is your father?`, or `you can talk?`.

💭 *"Windows, &lt;command&gt;"*
-------------------------
Lets Windows execute a command, replace &lt;command&gt; with: `calculate [expression]`, `connect VPN`, `count down from [number]`, `empty recycle bin`, `enable god mode`, `I need help`, `locate my phone`, `minimize all windows`, `ping [host]`, `repeat last reply`, `roll a dice`, `save screenshot`, `set volume to [number] percent`, `shut up`, `sorry`, `spell [text]`, `tell me a joke`, `tell me a quote`, `thank you`, `thanks`, `translate [text] to [language]`, `turn volume off`, `turn volume on`, `turn volume up`, `turn volume fully up`, `turn volume down`, `update repository`, or `wakeup [hostname]`.

🖖 *"Windows, &lt;farewell&gt;"*
---------------------------
Say good-bye to your computer by replacing &lt;farewell&gt; with: `bye`, `bye-bye`, `ciao`, `good-bye`, `I'll be back`, `see you`, or `see you later`.

📧 Feedback
------------
Send your email feedback to: markus.fleschutz [at] gmail.com

🤝 License & Copyright
-----------------------
This open source project is licensed under the CC0 license. All trademarks are the property of their respective owners.
