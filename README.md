# poshforcow

Fortune plus Cowsay for PowerShell

This brings the fun of UNIX Fortune and Cowsay to PowerShell in a very simple way.

Just download the files and execute the installation script from PowerShell.

No administrative privileges required, which means that it is installed for only for the current user.

However, if the use of scripts is restricted in your system, run the following command as administrator "Set-ExecutionPolicy Unrestricted".

It adds Cowsay (https://github.com/kanej/Posh-Cowsay) to your PowerShell modules and configures your PowerShell profile as per this example (https://anjaz.ch/2015/08/24/motd-for-powershell-using-the-fortune-mod-linux-package-files/).

At the end, a cow should tell you a random fortune each time that you open a new PowerShell console.

Furthermore, you can invoke the function "fortune" in order to make it happen again and again.

INSTALL

1. Open PowerShell and change directory to the place to which you have cloned or expanded the poshforcow-master folder. You should have three files: Install.ps1, cowsay.psm1, and fortune_cookies.txt.
2. Run the installation script:
   .\Install.ps1
3. You are done! Just open a new PowerShell and have fun. 
