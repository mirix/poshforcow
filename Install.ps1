# This is the install script for the Fortune+Cowsay emulator for PowerShell
# Run this script to install. It can be executed as normal user
# No administrative rights required
# As a consequence, it is only installed for the current user
# It installs Cowsay as a power shell module
# It modifies the Powershell profile to show a Cow telling your fortune
# Invoking the "fortune" function on PowerShell will have a similar effect


${working_dir} = (Get-Item -Path ".\").FullName
${ps_modules} = ${Env:PSModulePath}.split(";")[0]

New-Item -ItemType Directory -Force -Path ${ps_modules}\Cowsay
cp ${working_dir}\cowsay.psm1 ${ps_modules}\Cowsay\cowsay.psm1

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

Add-content -path ${profile_file} -value 'Import-Module cowsay'
Add-content -path ${profile_file} -value 'function fortune{'
Add-content -path ${profile_file} -value ('$fortunes = get-content '+${working_dir}+'\fortune_cookies.txt')
Add-content -path ${profile_file} -value 'get-random -InputObject $fortunes | cowsay'
Add-content -path ${profile_file} -value '}'
Add-content -path ${profile_file} -value 'clear-host'
Add-content -path ${profile_file} -value 'fortune{}'
