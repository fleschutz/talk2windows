<#
.SYNOPSIS
	Checks Outlook's Inbox 
.DESCRIPTION
	This PowerShell script checks the inbox of Outlook for new mails.
.EXAMPLE
	PS> ./check-outlook
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Outlook = New-Object -com Outlook.application
	$MAPI = $Outlook.GetNameSpace("MAPI")
	$Inbox = $MAPI.GetDefaultFolder(6) # 6 = olFolderInbox
	[int]$Unread = 0
	foreach($Item in $Inbox.Items) {
		if ($Item.Unread -eq $true) { $Unread++ }
	}
	if ($Unread -eq 0) {		$Reply = "No new mails."
	} elseif ($Unread -eq 1) {	$Reply = "You've got one new mail."
	} else {			$Reply = "You've got $Unread new mails."
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}