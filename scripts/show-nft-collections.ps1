<#
.SYNOPSIS
	Shows the NFT collections by trading volume 
.DESCRIPTION
	This script launches the Web browser and shows the NFT collections by trading volume.
.EXAMPLE
	PS> ./show-nft-collections
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://crypto.com/price/nft-collections"
exit 0 # success
