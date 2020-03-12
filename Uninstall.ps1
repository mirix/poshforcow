# This is the uninstall script for PoshCow
# a Fortune+Cowsay emulator for PowerShell
# Run this script to entirely uninstall PoshCow. 
# It can be executed as normal user
# No administrative rights required

${ps_modules} = ${Env:PSModulePath}.split(";")[0]

Remove-Item -Recurse -Force ${ps_modules}\Cowsay

Remove-Item -Recurse -Force ${ps_modules}\Fortune

Remove-Item -Recurse -Force ${ps_modules}\Poshcow

${ps_profile} = $PROFILE

(Get-Content ${ps_profile}) | Select-String -pattern "poshcow" -notmatch | Out-File ${ps_profile}
