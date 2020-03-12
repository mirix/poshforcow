# This is the install script for PoshCow
# a Fortune+Cowsay emulator for PowerShell
# Run this script to install it. 
# It can be executed as normal user
# No administrative rights required
# As a consequence, it is only installed for the current user
# It installs Fortune, Cowsay and Poshcow as power shell modules
# It also modifies the Powershell profile to show a Cow telling your fortune
# Invoking the "poshcow" function on PowerShell will have a similar effect


${working_dir} = (Get-Item -Path ".\").FullName
${ps_modules} = ${Env:PSModulePath}.split(";")[0]

New-Item -ItemType Directory -Force -Path ${ps_modules}\Cowsay
Copy-Item -Force ${working_dir}\cowsay.psm1 ${ps_modules}\Cowsay\cowsay.psm1

New-Item -ItemType Directory -Force -Path ${ps_modules}\Fortune
Copy-Item -Force ${working_dir}\fortune.psm1 ${ps_modules}\Fortune\fortune.psm1

New-Item -ItemType Directory -Force -Path ${ps_modules}\Poshcow
Copy-Item -Force ${working_dir}\poshcow.psm1 ${ps_modules}\Poshcow\poshcow.psm1

${ps_profile} = $PROFILE.SubString(0, $PROFILE.LastIndexOf('\'))
${profile_name} = 'Microsoft.PowerShell_profile.ps1'
${profile_file} = "${ps_profile}\${profile_name}"

If(!(Test-Path ${ps_profile}))
{
	New-Item -ItemType Directory -Force -Path ${ps_profile}
}

If (!(Test-Path ${profile_file}))
{
	New-Item -ItemType File -Path ${ps_profile} -Name ${profile_name}
}

(Get-Content ${profile_file}) | Where-Object {$_ -notmatch 'Import-Module poshcow'} | Set-Content ${profile_file}
Add-content -path ${profile_file} -value 'Import-Module poshcow'

(Get-Content ${profile_file}) | Where-Object {$_ -notmatch 'clear-host; poshcow'} | Set-Content ${profile_file}
Add-content -path ${profile_file} -value 'clear-host; poshcow'
