TALK 2 WINDOWS FAQ
==================

What is PowerShell?
-------------------
PowerShell is a task automation and configuration management framework from Microsoft, consisting of a command-line shell and associated scripting language. 


How to get PowerShell?
----------------------
* **Windows 7 and newer** provides PowerShell by default. However, script execution is **disallowed by default** (execution policy is "restricted"). To enable this, enter as administrator:
   ```
   PS> Set-ExecutionPolicy RemoteSigned
   ```

How to get the Repository?
--------------------------
* Git users execute: `$ git clone https://github.com/fleschutz/talk2windows`
* otherwise download and unzip: https://github.com/fleschutz/talk2windows/archive/master.zip


How to add the scripts to the search path?
------------------------------------------
Open the environment variables dialogue and add the full path to Scripts/ to the system environment variable "Path"


Want to contribute or found a bug or issue?
-------------------------------------------
If you find something bad (like a bug, error, or any issue), please report it here by open an Issue.

Or even better: Fork the repository, add or fix the script and submit a pull request, so others can participate too.  


Your question is not answered here?
-----------------------------------
Send your question to: markus [at] fleschutz [dot] de
