# This is a PoshCow module for PowerShell
# It depend on the Fortune and CowSay modules
# Please, install along with the Cowsay module
# by running the install script

Import-Module fortune
Import-Module cowsay

function poshcow() {
	fortune | cowsay
}

Export-ModuleMember poshcow
