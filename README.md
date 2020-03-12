# poshforcow

PoshCow: Fortune plus Cowsay for PowerShell

This brings the fun of UNIX Fortune and Cowsay to PowerShell in a very simple way.

Just download the files and execute the installation script from PowerShell.

No administrative privileges required, which means that it is installed for only for the current user.

However, if the use of scripts is restricted in your system, run the following command as administrator "Set-ExecutionPolicy Unrestricted".

It installs the Fortune, Cowsay and Poshcow modules and modifies your PowerShell user profile.

At the end, a cow should tell you a random fortune each time that you open a new PowerShell console.

Furthermore, you can invoke the function "poshcow" in order to make it happen again and again. Likewise, "fortune" will just output a fortune cookie, without cow.

For uninstalling, just run the uninstall script as the user who originally installed the modules.

INSTALL

1. Open PowerShell and change directory to the place to which you have cloned or expanded the poshforcow-master folder. The foloowing four files are strictly required: Install.ps1, cowsay.psm1, fortune.psm1 and poshcow.psm1.
2. Run the installation script:
   .\Install.ps1
3. You are done! Just open a new PowerShell and have fun. 

NOTE: If you have previously installed an old version (older than 13 March 2020), please, edit your user's PowerShell profile manually prior to running the installation script (even after running the uninstall script). The current version can automatically handle updates. 
