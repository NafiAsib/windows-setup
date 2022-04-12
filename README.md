# Windows Setup

- Update [App Installer](https://www.microsoft.com/en-us/p/app-installer/9nblggh4nns1?activetab=pivot:overviewtab) from Store.
- [7-zip](https://www.7-zip.org/)
<!-- - [Activate Windows 10](https://github.com/massgravel/Microsoft-Activation-Scripts) -->
- Change touchbar driver to [Windows Precision](https://www.youtube.com/watch?v=f2rfwR-IV-c)
- [Delete/Uninstall unnecessary windows bloat](https://github.com/NafiAsib/windows-setup/blob/master/debloat.ps1)
- [Brave Browser](https://brave.com/)
- [git](https://git-scm.com/download/win) `winget install --id Git.Git -e --source winget`
  - [Setup ssh key](https://github.com/NafiAsib/windows-setup/blob/master/settings.ps1)
- [VScode](https://code.visualstudio.com/download)
- [Copy VSCode settings](https://github.com/NafiAsib/windows-setup/blob/master/vscode/settings.json)
  - settings.json inside `%APPDATA%\Code\User`
  - [Run vscode extension installer script](https://github.com/NafiAsib/windows-setup/blob/master/vscode/extensions.ps1)
- Run [Ninite (Discord, SumatraPDF, VLC, WinRAR, Zoom)](https://ninite.com/)
- [Windows Terminal (**from store**)](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701#activetab=pivot:overviewtab)
  - settings.json inside `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`
- [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
- [AutoHotKey](https://www.autohotkey.com/)
  - [script](https://github.com/NafiAsib/dotfiles/blob/master/windoze.md)
- [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install)
  - [Run ansible](https://github.com/NafiAsib/ansible-dots)
- [Setup Node.js](https://docs.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-windows)

**_To check if bloatware is removed run, `Select-String "name-of-app"`_**


### TODO
- [ ] Add PowerShell setup steps

![WSL2](https://user-images.githubusercontent.com/38901581/154800603-295e1788-9e9b-438b-bebd-adceef332cd3.png)
![PS-1](https://user-images.githubusercontent.com/38901581/154800607-5cc32cac-5bac-4516-8f89-cabbf0a9a39d.png)
![PS-2](https://user-images.githubusercontent.com/38901581/154800610-da568d10-1d56-4be0-88de-66e23acb09e7.png)
